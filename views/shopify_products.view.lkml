# The name of this view in Looker is "Shopify Products"
view: shopify_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shopify_products ;;
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

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}."admin_graphql_api_id" ;;
  }

  dimension: body_html {
    type: string
    sql: ${TABLE}."body_html" ;;
  }

  dimension_group: created_at {
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

  dimension: handle {
    type: string
    sql: ${TABLE}."handle" ;;
  }

  dimension: image__admin_graphql_api_id {
    type: string
    sql: ${TABLE}."image__admin_graphql_api_id" ;;
  }

  dimension_group: image__created {
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
    sql: ${TABLE}."image__created_at" ;;
  }

  dimension: image__height {
    type: number
    sql: ${TABLE}."image__height" ;;
  }

  dimension: image__id {
    type: number
    sql: ${TABLE}."image__id" ;;
  }

  dimension: image__position {
    type: number
    sql: ${TABLE}."image__position" ;;
  }

  dimension: image__src {
    type: string
    sql: ${TABLE}."image__src" ;;
  }

  dimension_group: image__updated {
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
    sql: ${TABLE}."image__updated_at" ;;
  }

  dimension: image__width {
    type: number
    sql: ${TABLE}."image__width" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}."product_title" ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}."product_type" ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}."published_at" ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}."published_scope" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."tags" ;;
  }

  dimension: template_suffix {
    type: string
    sql: ${TABLE}."template_suffix" ;;
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

  dimension: variant_id {
    type: string
    sql: ${TABLE}."variant_id" ;;
  }

  dimension: variant_price {
    type: number
    sql: ${TABLE}."variant_price" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_variant_price {
    type: sum
    sql: ${variant_price} ;;
  }

  measure: average_variant_price {
    type: average
    sql: ${variant_price} ;;
  }

  dimension: variant_sku {
    type: string
    sql: ${TABLE}."variant_sku" ;;
  }

  dimension: variant_title {
    type: string
    sql: ${TABLE}."variant_title" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."vendor" ;;
  }

  measure: count {
    type: count
    drill_fields: [_sdc_shop_name]
  }
}
