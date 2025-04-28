import pandas as pd
from typing import Optional
import logging
import gc


def merging_data(df_dict: dict,
                 merge_order: Optional[list] = None) -> object:
    """
    Transformation Function in Python with Error Handling,
    Basic Merging Config,
    Memory Cleaning
    :param df_dict: Key-value pair (Dataframe: Values)
    :param merge_order: The order which the program performs schema merge
    :return: Merged pandas Dataframe
    """
    merged_df = None
    try:
        if merge_order is None:
            merge_order = [
                ("customer", "phone_number", "customerID", "customerID", ("", "")),
                ("customer", "address", "customerID", "customerID", ("", "")),
                ("customer", "`order`", "customerID", "customerID", ("", "")),
                ("customer", "payment", "orderID", "orderID", ("", "")),
                ("customer", "shipment", "orderID", "orderID", ("", "")),
                ("customer", "carrier", "shipmentID", "shipmentID", ("", "_carrier")),
                ("customer", "review", "orderID", "orderID", ("", "_review")),
                ("customer", "product", "SKU", "SKU", ("", "")),
                ("customer", "supplier", "supplierID", "supplierID", ("", "")),
                ("customer", "order_item", "orderID", "orderID", ("", "_order_item")),
                ("customer", "supplier_email", "supplierID", "supplierID", ("", "_supplier")),
                ("customer", "supplier_phone", "supplierID", "supplierID", ("", "_supplier"))
            ]

        merged_df = df_dict["customer"]
        for left_table, right_table, left_key, right_key, suffixes in merge_order:
            right_df = df_dict[right_table]
            merged_df = pd.merge(
                merged_df,
                right_df,
                left_on=left_key,
                right_on=right_key,
                suffixes=suffixes
            )
            # Clean up memory
            del right_df
            gc.collect()
    except Exception as e:
        logging.error(f"Merging dataframes failed: {str(e)}")
        raise
    finally:
        return merged_df
