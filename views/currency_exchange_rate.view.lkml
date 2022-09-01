# The name of this view in Looker is "Currency Exchange Rate"
view: currency_exchange_rate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.currency_exchange_rate ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_on" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Currency Iso" in Explore.

  dimension: currency_iso {
    type: string
    sql: ${TABLE}."currency_iso" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."exchange_rate" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_exchange_rate {
    type: sum
    sql: ${exchange_rate} ;;
  }

  measure: average_exchange_rate {
    type: average
    sql: ${exchange_rate} ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."last_updated" ;;
  }

  dimension: netsuite_currency_internalid {
    type: number
    value_format_name: id
    sql: ${TABLE}."netsuite_currency_internalid" ;;
  }

  dimension: primary_key {
    type: number
    sql: ${TABLE}."primary_key" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
