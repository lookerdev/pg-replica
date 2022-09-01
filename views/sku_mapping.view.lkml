# The name of this view in Looker is "SKU Mapping"
view: sku_mapping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.sku_mapping ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Fulfillment Type" in Explore.

  dimension: fulfillment_type {
    type: string
    sql: ${TABLE}."fulfillment_type" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."product_category" ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."product_line" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: sku_internalid {
    type: string
    sql: ${TABLE}."sku_internalid" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
