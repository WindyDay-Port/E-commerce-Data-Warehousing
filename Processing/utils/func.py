from google.cloud import bigquery
import logging
import os


def configure_bigquery_connection(cre_path):
    try:
        os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = fr"{cre_path}"
        return bigquery.Client()
    except Exception as e:
        logging.error(f"Failed to configure BigQuery connection: {e}")
        raise
