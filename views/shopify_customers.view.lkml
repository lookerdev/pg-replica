# The name of this view in Looker is "Shopify Customers"
view: shopify_customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shopify_customers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}."_sdc_batched_at" ;;
  }

  dimension_group: _sdc_extracted {
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
    sql: ${TABLE}."_sdc_extracted_at" ;;
  }

  dimension_group: _sdc_received {
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
    sql: ${TABLE}."_sdc_received_at" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Sdc Sequence" in Explore.

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}."_sdc_sequence" ;;
  }

  dimension: _sdc_shop_id {
    type: number
    sql: ${TABLE}."_sdc_shop_id" ;;
  }

  dimension: _sdc_shop_myshopify_domain {
    type: string
    sql: ${TABLE}."_sdc_shop_myshopify_domain" ;;
  }

  dimension: _sdc_shop_name {
    type: string
    sql: ${TABLE}."_sdc_shop_name" ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}."_sdc_table_version" ;;
  }

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}."accepts_marketing" ;;
  }

  dimension_group: accepts_marketing_updated {
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
    sql: ${TABLE}."accepts_marketing_updated_at" ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}."admin_graphql_api_id" ;;
  }

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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: default_address__address1 {
    type: string
    sql: ${TABLE}."default_address__address1" ;;
  }

  dimension: default_address__address2 {
    type: string
    sql: ${TABLE}."default_address__address2" ;;
  }

  dimension: default_address__city {
    type: string
    sql: ${TABLE}."default_address__city" ;;
  }

  dimension: default_address__company {
    type: string
    sql: ${TABLE}."default_address__company" ;;
  }

  dimension: default_address__country {
    type: string
    sql: ${TABLE}."default_address__country" ;;
  }

  dimension: default_address__country_code {
    type: string
    sql: ${TABLE}."default_address__country_code" ;;
  }

  dimension: default_address__country_name {
    type: string
    sql: ${TABLE}."default_address__country_name" ;;
  }

  dimension: default_address__customer_id {
    type: number
    sql: ${TABLE}."default_address__customer_id" ;;
  }

  dimension: default_address__default {
    type: yesno
    sql: ${TABLE}."default_address__default" ;;
  }

  dimension: default_address__first_name {
    type: string
    sql: ${TABLE}."default_address__first_name" ;;
  }

  dimension: default_address__id {
    type: number
    sql: ${TABLE}."default_address__id" ;;
  }

  dimension: default_address__last_name {
    type: string
    sql: ${TABLE}."default_address__last_name" ;;
  }

  dimension: default_address__name {
    type: string
    sql: ${TABLE}."default_address__name" ;;
  }

  dimension: default_address__phone {
    type: string
    sql: ${TABLE}."default_address__phone" ;;
  }

  dimension: default_address__province {
    type: string
    sql: ${TABLE}."default_address__province" ;;
  }

  dimension: default_address__province_code {
    type: string
    sql: ${TABLE}."default_address__province_code" ;;
  }

  dimension: default_address__zip {
    type: string
    sql: ${TABLE}."default_address__zip" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: last_order_id {
    type: number
    sql: ${TABLE}."last_order_id" ;;
  }

  dimension: last_order_name {
    type: string
    sql: ${TABLE}."last_order_name" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_orders_count {
    type: sum
    sql: ${orders_count} ;;
  }

  measure: average_orders_count {
    type: average
    sql: ${orders_count} ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."tags" ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}."tax_exempt" ;;
  }

  dimension: total_spent {
    type: string
    sql: ${TABLE}."total_spent" ;;
  }

  dimension_group: updated_at {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}."verified_email" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      default_address__country_name,
      default_address__first_name,
      default_address__last_name,
      default_address__name,
      last_order_name,
      first_name,
      _sdc_shop_name,
      last_name
    ]
  }
}
