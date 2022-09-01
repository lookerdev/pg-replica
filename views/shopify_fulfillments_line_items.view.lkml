# The name of this view in Looker is "Shopify Fulfillments Line Items"
view: shopify_fulfillments_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shopify_fulfillments_line_items ;;
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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Sdc Level 0 ID" in Explore.

  dimension: _sdc_level_0_id {
    type: string
    sql: ${TABLE}."_sdc_level_0_id" ;;
  }

  dimension: _sdc_level_1_id {
    type: string
    sql: ${TABLE}."_sdc_level_1_id" ;;
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

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}."_sdc_sequence" ;;
  }

  dimension: _sdc_source_key_id {
    type: number
    sql: ${TABLE}."_sdc_source_key_id" ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}."_sdc_table_version" ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}."admin_graphql_api_id" ;;
  }

  dimension: destination_location__address1 {
    type: string
    sql: ${TABLE}."destination_location__address1" ;;
  }

  dimension: destination_location__address2 {
    type: string
    sql: ${TABLE}."destination_location__address2" ;;
  }

  dimension: destination_location__city {
    type: string
    sql: ${TABLE}."destination_location__city" ;;
  }

  dimension: destination_location__country_code {
    type: string
    sql: ${TABLE}."destination_location__country_code" ;;
  }

  dimension: destination_location__id {
    type: string
    sql: ${TABLE}."destination_location__id" ;;
  }

  dimension: destination_location__name {
    type: string
    sql: ${TABLE}."destination_location__name" ;;
  }

  dimension: destination_location__province_code {
    type: string
    sql: ${TABLE}."destination_location__province_code" ;;
  }

  dimension: destination_location__zip {
    type: string
    sql: ${TABLE}."destination_location__zip" ;;
  }

  dimension: fulfillable_quantity {
    type: number
    sql: ${TABLE}."fulfillable_quantity" ;;
  }

  dimension_group: fulfillment {
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
    sql: ${TABLE}."fulfillment_date" ;;
  }

  dimension: fulfillment_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."fulfillment_id" ;;
  }

  dimension: fulfillment_name {
    type: string
    sql: ${TABLE}."fulfillment_name" ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}."fulfillment_service" ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}."fulfillment_status" ;;
  }

  dimension: gift_card {
    type: yesno
    sql: ${TABLE}."gift_card" ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}."grams" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_date" ;;
  }

  dimension_group: order_date_trunc {
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
    sql: ${TABLE}."order_date_trunc" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}."order_name" ;;
  }

  dimension: origin_location__address1 {
    type: string
    sql: ${TABLE}."origin_location__address1" ;;
  }

  dimension: origin_location__address2 {
    type: string
    sql: ${TABLE}."origin_location__address2" ;;
  }

  dimension: origin_location__city {
    type: string
    sql: ${TABLE}."origin_location__city" ;;
  }

  dimension: origin_location__country_code {
    type: string
    sql: ${TABLE}."origin_location__country_code" ;;
  }

  dimension: origin_location__id {
    type: string
    sql: ${TABLE}."origin_location__id" ;;
  }

  dimension: origin_location__name {
    type: string
    sql: ${TABLE}."origin_location__name" ;;
  }

  dimension: origin_location__province_code {
    type: string
    sql: ${TABLE}."origin_location__province_code" ;;
  }

  dimension: origin_location__zip {
    type: string
    sql: ${TABLE}."origin_location__zip" ;;
  }

  dimension: pre_tax_price {
    type: number
    sql: ${TABLE}."pre_tax_price" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pre_tax_price {
    type: sum
    sql: ${pre_tax_price} ;;
  }

  measure: average_pre_tax_price {
    type: average
    sql: ${pre_tax_price} ;;
  }

  dimension: pre_tax_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."pre_tax_price_set__presentment_money__amount" ;;
  }

  dimension: pre_tax_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."pre_tax_price_set__presentment_money__currency_code" ;;
  }

  dimension: pre_tax_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."pre_tax_price_set__shop_money__amount" ;;
  }

  dimension: pre_tax_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."pre_tax_price_set__shop_money__currency_code" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."price_set__presentment_money__amount" ;;
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."price_set__presentment_money__currency_code" ;;
  }

  dimension: price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."price_set__shop_money__amount" ;;
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."price_set__shop_money__currency_code" ;;
  }

  dimension: primary_key {
    type: string
    sql: ${TABLE}."primary_key" ;;
  }

  dimension: product_exists {
    type: yesno
    sql: ${TABLE}."product_exists" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}."requires_shipping" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}."taxable" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}."total_discount" ;;
  }

  dimension: total_discount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_discount_set__presentment_money__amount" ;;
  }

  dimension: total_discount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."total_discount_set__presentment_money__currency_code" ;;
  }

  dimension: total_discount_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_discount_set__shop_money__amount" ;;
  }

  dimension: total_discount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_discount_set__shop_money__currency_code" ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}."variant_id" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      origin_location__name,
      order_name,
      fulfillment_name,
      destination_location__name,
      fulfillments.id
    ]
  }
}
