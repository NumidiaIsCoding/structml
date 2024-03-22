# Postgres Docker Compose

## Prerequisites

Before running this project, make sure you have the following installed:

- Docker Compose: [Installation instructions](https://docs.docker.com/compose/install/)
- Python: [Installation instructions](https://www.python.org/downloads/)

## Run the Project

To run this project, follow these steps:

1. **Create a folder for CSV data**: Create a folder named `csv-data` in the root directory of the project. You will need to upload your CSV files to this folder.

2. **Upload CSV files**: Download the CSV files from the [Canada Vigilance Adverse Reaction Online Database Data Structures](https://www.canada.ca/en/health-canada/services/drugs-health-products/medeffect-canada/adverse-reaction-database/canada-vigilance-adverse-reaction-online-database-data-structures.html#a10) page and upload them to the `csv-data` folder you created in step 1.

3. **Run the PostgreSQL Docker image**: Open a terminal and navigate to the root directory of the project. Run the following command to start the PostgreSQL Docker container:


This command will pull the PostgreSQL image (if not already present) and start a Docker container running PostgreSQL.

4. **Connect to the PostgreSQL database**: You can use tools like DBeaver to connect to the PostgreSQL database. Use the following connection details:

- **Host**: localhost (or the IP address of your Docker host)
- **Port**: 5432
- **Database**: (Enter the name of your database)
- **Username**: (Enter the username configured in your Docker Compose file)
- **Password**: (Enter the password configured in your Docker Compose file)

Once connected, you can interact with the PostgreSQL database and query the data imported from your CSV files.

## Additional Notes

- Make sure to replace `(Enter the name of your database)`, `(Enter the username configured in your Docker Compose file)`, and `(Enter the password configured in your Docker Compose file)` with the actual values you've configured.

- If you encounter any issues or have questions, feel free to [open an issue](https://github.com/yourusername/yourproject/issues) on GitHub.

