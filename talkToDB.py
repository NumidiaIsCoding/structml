from langchain.prompts.chat import HumanMessagePromptTemplate
from langchain.schema import HumanMessage, SystemMessage
from langchain_experimental.sql import SQLDatabaseChain
from langchain_community.utilities import SQLDatabase
from langchain.prompts import PromptTemplate
from langchain_community.llms import OpenAI
from langchain_openai import ChatOpenAI
import logging
import toml

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

def load_api_key():
    with open("config/secrets.toml", "r") as f:
        config = toml.load(f)
        openai_api_key = config["OPENAI_API_KEY"]
        return openai_api_key

# Charger la clé API OpenAI.
openai_api_key = load_api_key()

# Créer une instance de ChatOpenAI avec la clé API chargée.
llm = ChatOpenAI(model = 'gpt-3.5-turbo-0125',temperature=0, openai_api_key=openai_api_key)

host = "xxx"
port = "xxx"
username = "xxx"
password = "xxx"
database_schema = "xxx"
postgreSQL_uri = f"postgresql+psycopg2://{username}:{password}@{host}:{port}/{database_schema}"

db = SQLDatabase.from_uri(postgreSQL_uri, include_tables=['report_drug_indication', 'drug_product_ingredients'], sample_rows_in_table_info=5)

db_chain = SQLDatabaseChain.from_llm(llm, db, verbose = True)
logging.info(f"DB chain: {db_chain}")

def retrieve_from_db(query: str) -> str:
    db_context = db_chain(query)
    db_context = db_context['result'].strip()
    logging.info(f"Context retrieve from db : {db_context}")
    return db_context

def generate(query: str) -> str:
    db_context = retrieve_from_db(query)
    
    system_message = """You are a professionnal in medical research and belong to a drug testing laboratory.
        You have to answer user's query and provide relevant information to help in their medical question.
        Example:

        Input:
        How many drugs contains as active ingredient propanetriol ?

        Context:
        The drugs that contains propanetriol as active ingredient are the followings:
        1. Glycerol gel 
        2. Calorad
        3. Melissa supreme

        Output:
        The drugs that contains propanetriol as active ingredient are Glycerol gel, Calorad and Melissa supreme. 
        """
    
    human_qry_template = HumanMessagePromptTemplate.from_template(
        """Input:
        {human_input}
        
        Context:
        {db_context}
        
        Output:
        """
    )
    messages = [
      SystemMessage(content=system_message),
      human_qry_template.format(human_input=query, db_context=db_context)
    ]
    response = llm(messages).content
    return response

def main():
    answer = generate("What is the active ingredient used in drugs used for psychotic disorder problems?")

    print(answer)

if __name__ == "__main__":
    main()