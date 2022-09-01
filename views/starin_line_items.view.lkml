# The name of this view in Looker is "Starin Line Items"
view: starin_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.starin_line_items ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Allitems Quantity" in Explore.

  dimension: allitems_quantity {
    type: number
    sql: ${TABLE}."allitems_quantity" ;;
  }

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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: distribution_channel {
    type: string
    sql: ${TABLE}."distribution_channel" ;;
  }

  dimension: hq_quantity {
    type: number
    sql: ${TABLE}."hq_quantity" ;;
  }

  dimension: lockadapter_quantity {
    type: number
    sql: ${TABLE}."lockadapter_quantity" ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}."market" ;;
  }

  dimension: og_quantity {
    type: number
    sql: ${TABLE}."og_quantity" ;;
  }

  dimension: owlcare_quantity {
    type: number
    sql: ${TABLE}."owlcare_quantity" ;;
  }

  dimension: powersupply_quantity {
    type: number
    sql: ${TABLE}."powersupply_quantity" ;;
  }

  dimension: pro_quantity {
    type: number
    sql: ${TABLE}."pro_quantity" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension: rereported_quantity {
    type: number
    sql: ${TABLE}."rereported_quantity" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."sales_channel" ;;
  }

  dimension: sales_organization {
    type: string
    sql: ${TABLE}."sales_organization" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: sku_name {
    type: string
    sql: ${TABLE}."sku_name" ;;
  }

  dimension: usbextension_quantity {
    type: number
    sql: ${TABLE}."usbextension_quantity" ;;
  }

  dimension: wbo_quantity {
    type: number
    sql: ${TABLE}."wbo_quantity" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [sku_name]
  }
}
