from sqlalchemy import create_engine
import pandas as pd
import logging


# Define extracting function
def extract_data_from_database(table_names: list,
                               connection_string: str,
                               chunk_size: int) -> dict:
    """
    Extraction Pipeline in Python with Error Handling and Logging
    :param table_names: List contains database table names
    :param connection_string: Connection information
    :param chunk_size: Number of records the function should extract
    :return: Extracted dataframes
    """
    engine = None
    try:
        engine = create_engine(connection_string)
        dataframes = {}
        for table_name in table_names:
            query = f"SELECT * FROM {table_name}"
            if chunk_size:
                chunks = pd.read_sql_query(
                    query,
                    engine,
                    chunksize=chunk_size
                )
                dataframes[table_name] = pd.concat(chunks, axis=0)
            else:
                dataframes[table_name] = pd.read_sql(query, engine)
        return dataframes
    except Exception as e:
        logging.error(f"Database extraction failed: {str(e)}")
        raise
    finally:
        engine.dispose()
