from etl.extract import extract_data_from_database
from etl.load import load_dataframe_pipeline
from etl.transform import merging_data
import logging
import yaml


# Configure logging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")


# Load YAML configuration
def load_config(file_path="config.yaml"):
    with open(file_path, "r") as file:
        return yaml.safe_load(file)


def main():
    try:
        logging.info("Starting ETL pipeline execution...")

        # Load configuration
        config = load_config()

        # Extract database configurations
        db_config = config["database"]
        bigquery_config = config["bigquery"]
        credentials = config["credentials"]

        # Step 1: Extract Data
        logging.info("Extracting data from database...")
        extracted_data = extract_data_from_database(
            table_names=db_config["tables"],
            connection_string=db_config["connection_string"],
            chunk_size=bigquery_config["size"]
        )
        logging.info("Data extraction completed.")

        # Step 2: Transform Data
        logging.info("Transforming data...")
        transformed_data = merging_data(df_dict=extracted_data, merge_order=None)
        logging.info("Data transformation completed.")

        # Step 3: Load Data into BigQuery
        logging.info("Loading data into BigQuery...")
        load_dataframe_pipeline(
            dataframe=transformed_data,
            project_id=bigquery_config["project"],
            dataset_id=bigquery_config["dataset"],
            table_id=bigquery_config["table"],
            cre_path=credentials["path"],
            chunk_size=bigquery_config["size"],
            write_disposition=bigquery_config["disposition"]
        )
        logging.info("Data loading completed successfully.")

    except Exception as e:
        logging.error(f"ETL process failed: {str(e)}", exc_info=True)
    finally:
        logging.info("ETL pipeline execution finished.")


if __name__ == "__main__":
    main()
