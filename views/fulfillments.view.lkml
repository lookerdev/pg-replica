# The name of this view in Looker is "Fulfillments"
view: fulfillments {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.fulfillments ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}."date_time" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Email" in Explore.

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: financial_status {
    type: string
    sql: ${TABLE}."financial_status" ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}."fulfillment_status" ;;
  }

  dimension: netsuite_id {
    type: string
    sql: ${TABLE}."netsuite_id" ;;
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}."opp_id" ;;
  }

  dimension: serials {
    type: string
    sql: ${TABLE}."serials" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shopify_fulfillments.count, shopify_fulfillments_line_items.count]
  }
}
