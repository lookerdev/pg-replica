# The name of this view in Looker is "Amazon Vendor"
view: amazon_vendor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.amazon_vendor ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amazon Channel" in Explore.

  dimension: amazon_channel {
    type: string
    sql: ${TABLE}."amazon_channel" ;;
  }

  dimension: asin {
    type: string
    sql: ${TABLE}."asin" ;;
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

  dimension: customer_returns {
    type: number
    sql: ${TABLE}."customer_returns" ;;
  }

  dimension: distribution_channel {
    type: string
    sql: ${TABLE}."distribution_channel" ;;
  }

  dimension: free_replacements {
    type: number
    sql: ${TABLE}."free_replacements" ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}."market" ;;
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

  dimension: product_title {
    type: string
    sql: ${TABLE}."product_title" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."sales_channel" ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}."ship_date" ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}."subregion" ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}."total_price" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_price {
    type: sum
    sql: ${total_price} ;;
  }

  measure: average_total_price {
    type: average
    sql: ${total_price} ;;
  }

  dimension: units_ordered {
    type: number
    sql: ${TABLE}."units_ordered" ;;
  }

  dimension: units_shipped {
    type: number
    sql: ${TABLE}."units_shipped" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
