from utils.func import configure_bigquery_connection
from google.cloud import bigquery
import logging
import gc


def load_dataframe_pipeline(dataframe, project_id, dataset_id, table_id, cre_path, chunk_size, write_disposition):
    try:
        # Configure BigQuery connection
        client = configure_bigquery_connection(cre_path)

        # Create job config
        job_config = bigquery.LoadJobConfig(
            write_disposition=write_disposition,
            create_disposition='CREATE_IF_NEEDED',
            schema_update_options=[
                bigquery.SchemaUpdateOption.ALLOW_FIELD_ADDITION,
                bigquery.SchemaUpdateOption.ALLOW_FIELD_RELAXATION
            ]
        )

        # Load data in chunks
        for i in range(0, len(dataframe), chunk_size):
            chunk = dataframe.iloc[i:i + chunk_size]

            try:
                load_job = client.load_table_from_dataframe(
                    chunk,
                    f"{project_id}.{dataset_id}.{table_id}",
                    job_config=job_config
                )

                # Wait for the job to complete
                load_job.result()

                logging.info(f"Successfully loaded batch {i // chunk_size + 1}")
            except Exception as e:
                logging.error(f"Failed to load batch {i // chunk_size + 1}: {str(e)}")
                raise

            # Clean up memory
            del chunk
            gc.collect()

        logging.info("Data loading completed successfully")

    except Exception as e:
        logging.error(f"Failed to load data to BigQuery: {str(e)}")
        raise

    finally:
        # Clean up remaining resources
        del dataframe
        gc.collect()
