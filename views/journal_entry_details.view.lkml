# The name of this view in Looker is "Journal Entry Details"
view: journal_entry_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.journal_entry_details ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."account_name" ;;
  }

  dimension: account_name_short {
    type: string
    sql: ${TABLE}."account_name_short" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."billing_country" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}."channel_id" ;;
  }

  dimension: created_from_id {
    type: string
    sql: ${TABLE}."created_from_id" ;;
  }

  dimension: created_from_name {
    type: string
    sql: ${TABLE}."created_from_name" ;;
  }

  dimension: credit {
    type: number
    sql: ${TABLE}."credit" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_credit {
    type: sum
    sql: ${credit} ;;
  }

  measure: average_credit {
    type: average
    sql: ${credit} ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}."currency_id" ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}."currency_name" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: debit__do {
    type: number
    sql: ${TABLE}."debit__do" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}."document_number" ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}."document_type" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."exchange_rate" ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}."external_id" ;;
  }

  dimension: internal_id {
    type: string
    sql: ${TABLE}."internal_id" ;;
  }

  dimension: line {
    type: number
    sql: ${TABLE}."line" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}."memo" ;;
  }

  dimension: posting_period {
    type: string
    sql: ${TABLE}."posting_period" ;;
  }

  dimension: posting_period_id {
    type: number
    sql: ${TABLE}."posting_period_id" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."product_category" ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."product_line" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: quantity_absolute {
    type: number
    sql: ${TABLE}."quantity_absolute" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: reversal {
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
    sql: ${TABLE}."reversal_date" ;;
  }

  dimension: reversal_entry {
    type: string
    sql: ${TABLE}."reversal_entry" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}."transaction_date" ;;
  }

  dimension: value_coalesce {
    type: number
    sql: ${TABLE}."value_coalesce" ;;
  }

  dimension: value_coalesce_usd {
    type: number
    sql: ${TABLE}."value_coalesce_usd" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, currency_name, account_name, created_from_name]
  }
}
