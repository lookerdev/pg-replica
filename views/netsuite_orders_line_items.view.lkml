# The name of this view in Looker is "Netsuite Orders Line Items"
view: netsuite_orders_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.netsuite_orders_line_items ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: amount_usd {
    type: number
    sql: ${TABLE}."amount_usd" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."billing_country" ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}."class" ;;
  }

  dimension: cogs_per_item {
    type: number
    sql: ${TABLE}."cogs_per_item" ;;
  }

  dimension: cogs_total {
    type: number
    sql: ${TABLE}."cogs_total" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customer_internalid {
    type: string
    sql: ${TABLE}."customer_internalid" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}."memo" ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."product_line" ;;
  }

  dimension: quantity_fulfilled {
    type: number
    sql: ${TABLE}."quantity_fulfilled" ;;
  }

  dimension: quantity_ordered {
    type: number
    sql: ${TABLE}."quantity_ordered" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: sales_order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."sales_order_date" ;;
  }

  dimension: sales_order_externalid {
    type: string
    sql: ${TABLE}."sales_order_externalid" ;;
  }

  dimension: sales_order_internalid {
    type: string
    sql: ${TABLE}."sales_order_internalid" ;;
  }

  dimension: sales_order_number {
    type: string
    sql: ${TABLE}."sales_order_number" ;;
  }

  dimension: sales_order_status {
    type: string
    sql: ${TABLE}."sales_order_status" ;;
  }

  dimension: sales_rep {
    type: string
    sql: ${TABLE}."sales_rep" ;;
  }

  dimension: sales_rep_id {
    type: string
    sql: ${TABLE}."sales_rep_id" ;;
  }

  dimension: salesforce_opportunity_id {
    type: string
    sql: ${TABLE}."salesforce_opportunity_id" ;;
  }

  dimension: shopify_marketplace {
    type: string
    sql: ${TABLE}."shopify_marketplace" ;;
  }

  dimension: shopify_order_name {
    type: string
    sql: ${TABLE}."shopify_order_name" ;;
  }

  dimension: shopify_order_number {
    type: string
    sql: ${TABLE}."shopify_order_number" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}."subsidiary" ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}."terms" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, shopify_order_name]
  }
}
