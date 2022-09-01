# The name of this view in Looker is "Netsuite Fulfillments Line Items"
view: netsuite_fulfillments_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.netsuite_fulfillments_line_items ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: actual_ship {
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
    sql: ${TABLE}."actual_ship_date" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Class" in Explore.

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

  dimension_group: fulfillment {
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
    sql: ${TABLE}."fulfillment_date" ;;
  }

  dimension: fulfillment_externalid {
    type: string
    sql: ${TABLE}."fulfillment_externalid" ;;
  }

  dimension: fulfillment_internalid {
    type: string
    sql: ${TABLE}."fulfillment_internalid" ;;
  }

  dimension: fulfillment_number {
    type: string
    sql: ${TABLE}."fulfillment_number" ;;
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}."location__name" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: posting_period {
    type: string
    sql: ${TABLE}."posting_period" ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."product_line" ;;
  }

  dimension: quantity_fulfilled {
    type: number
    sql: ${TABLE}."quantity_fulfilled" ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}."rate" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
  }

  measure: average_revenue {
    type: average
    sql: ${revenue} ;;
  }

  dimension: revenue_category_segment {
    type: string
    sql: ${TABLE}."revenue_category_segment" ;;
  }

  dimension: revenue_usd {
    type: number
    sql: ${TABLE}."revenue_usd" ;;
  }

  dimension: sales_order_internalid {
    type: string
    sql: ${TABLE}."sales_order_internalid" ;;
  }

  dimension: sales_order_number {
    type: string
    sql: ${TABLE}."sales_order_number" ;;
  }

  dimension: ship_status {
    type: string
    sql: ${TABLE}."ship_status" ;;
  }

  dimension: shipping_company {
    type: string
    sql: ${TABLE}."shipping_company" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."shipping_country" ;;
  }

  dimension: shopify_marketplace {
    type: string
    sql: ${TABLE}."shopify_marketplace" ;;
  }

  dimension: shopify_order_number {
    type: string
    sql: ${TABLE}."shopify_order_number" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: sku_internalid {
    type: string
    sql: ${TABLE}."sku_internalid" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [location__name, customer_name]
  }
}
