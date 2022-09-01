# The name of this view in Looker is "Netsuite Orders"
view: netsuite_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.netsuite_orders ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Billing Country" in Explore.

  dimension: billing_country {
    type: string
    sql: ${TABLE}."billing_country" ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}."class" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: currency_exchange_rate {
    type: number
    sql: ${TABLE}."currency_exchange_rate" ;;
  }

  dimension: discount_name {
    type: string
    sql: ${TABLE}."discount_name" ;;
  }

  dimension: discount_total {
    type: number
    sql: ${TABLE}."discount_total" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: entity_internalid {
    type: string
    sql: ${TABLE}."entity_internalid" ;;
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}."entity_name" ;;
  }

  dimension: externalid {
    type: string
    sql: ${TABLE}."externalid" ;;
  }

  dimension: internalid {
    type: string
    sql: ${TABLE}."internalid" ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}."is_taxable" ;;
  }

  dimension: list_order_skus {
    type: string
    sql: ${TABLE}."list_order_skus" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}."memo" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order {
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
    sql: ${TABLE}."order_date" ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}."order_number" ;;
  }

  dimension: quantity_ordered {
    type: number
    sql: ${TABLE}."quantity_ordered" ;;
  }

  dimension: sales_rep {
    type: string
    sql: ${TABLE}."sales_rep" ;;
  }

  dimension: sales_rep_internalid {
    type: string
    sql: ${TABLE}."sales_rep_internalid" ;;
  }

  dimension: salesforce_opportunity_id {
    type: string
    sql: ${TABLE}."salesforce_opportunity_id" ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}."shipping_cost" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_shipping_cost {
    type: sum
    sql: ${shipping_cost} ;;
  }

  measure: average_shipping_cost {
    type: average
    sql: ${shipping_cost} ;;
  }

  dimension: shopify_order_name {
    type: string
    sql: ${TABLE}."shopify_order_name" ;;
  }

  dimension: shopify_order_number {
    type: string
    sql: ${TABLE}."shopify_order_number" ;;
  }

  dimension: shopify_store {
    type: string
    sql: ${TABLE}."shopify_store" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: subsidiary_name {
    type: string
    sql: ${TABLE}."subsidiary_name" ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}."subtotal" ;;
  }

  dimension: subtotal_line_items_agg {
    type: number
    sql: ${TABLE}."subtotal_line_items_agg" ;;
  }

  dimension: subtotal_usd {
    type: number
    sql: ${TABLE}."subtotal_usd" ;;
  }

  dimension: subtotal_usd_line_items_agg {
    type: number
    sql: ${TABLE}."subtotal_usd_line_items_agg" ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}."tax_rate" ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}."tax_total" ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}."terms" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."total" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [discount_name, subsidiary_name, entity_name, shopify_order_name]
  }
}
