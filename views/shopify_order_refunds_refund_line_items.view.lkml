# The name of this view in Looker is "Shopify Order Refunds Refund Line Items"
view: shopify_order_refunds_refund_line_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shopify_order_refunds_refund_line_items ;;
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

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__sdc_sequence {
    type: sum
    sql: ${_sdc_sequence} ;;
  }

  measure: average__sdc_sequence {
    type: average
    sql: ${_sdc_sequence} ;;
  }

  dimension: _sdc_source_key_id {
    type: string
    sql: ${TABLE}."_sdc_source_key_id" ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}."_sdc_table_version" ;;
  }

  dimension: line_item_admin_graphql_api_id {
    type: string
    sql: ${TABLE}."line_item_admin_graphql_api_id" ;;
  }

  dimension: line_item_fulfillable_quantity {
    type: number
    sql: ${TABLE}."line_item_fulfillable_quantity" ;;
  }

  dimension: line_item_fulfillment_service {
    type: string
    sql: ${TABLE}."line_item_fulfillment_service" ;;
  }

  dimension: line_item_fulfillment_status {
    type: string
    sql: ${TABLE}."line_item_fulfillment_status" ;;
  }

  dimension: line_item_gift_card {
    type: yesno
    sql: ${TABLE}."line_item_gift_card" ;;
  }

  dimension: line_item_grams {
    type: number
    sql: ${TABLE}."line_item_grams" ;;
  }

  dimension: line_item_id {
    type: string
    sql: ${TABLE}."line_item_id" ;;
  }

  dimension: line_item_name {
    type: string
    sql: ${TABLE}."line_item_name" ;;
  }

  dimension: line_item_pre_tax_price {
    type: string
    sql: ${TABLE}."line_item_pre_tax_price" ;;
  }

  dimension: line_item_pre_tax_price_set_presentment_money_amount {
    type: string
    sql: ${TABLE}."line_item_pre_tax_price_set_presentment_money_amount" ;;
  }

  dimension: line_item_pre_tax_price_set_shop_money_amount {
    type: string
    sql: ${TABLE}."line_item_pre_tax_price_set_shop_money_amount" ;;
  }

  dimension: line_item_pre_tax_price_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}."line_item_pre_tax_price_set_shop_money_currency_code" ;;
  }

  dimension: line_item_price {
    type: string
    sql: ${TABLE}."line_item_price" ;;
  }

  dimension: line_item_price_set_presentment_money_amount {
    type: string
    sql: ${TABLE}."line_item_price_set_presentment_money_amount" ;;
  }

  dimension: line_item_price_set_presentment_money_currency_code {
    type: string
    sql: ${TABLE}."line_item_price_set_presentment_money_currency_code" ;;
  }

  dimension: line_item_price_set_shop_money_amount {
    type: string
    sql: ${TABLE}."line_item_price_set_shop_money_amount" ;;
  }

  dimension: line_item_price_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}."line_item_price_set_shop_money_currency_code" ;;
  }

  dimension: line_item_product_exists {
    type: yesno
    sql: ${TABLE}."line_item_product_exists" ;;
  }

  dimension: line_item_product_id {
    type: string
    sql: ${TABLE}."line_item_product_id" ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}."line_item_quantity" ;;
  }

  dimension: line_item_requires_shipping {
    type: yesno
    sql: ${TABLE}."line_item_requires_shipping" ;;
  }

  dimension: line_item_sku {
    type: string
    sql: ${TABLE}."line_item_sku" ;;
  }

  dimension: line_item_taxable {
    type: yesno
    sql: ${TABLE}."line_item_taxable" ;;
  }

  dimension: line_item_title {
    type: string
    sql: ${TABLE}."line_item_title" ;;
  }

  dimension: line_item_total_discount {
    type: string
    sql: ${TABLE}."line_item_total_discount" ;;
  }

  dimension: line_item_total_discount_set_presentment_money_amount {
    type: string
    sql: ${TABLE}."line_item_total_discount_set_presentment_money_amount" ;;
  }

  dimension: line_item_total_discount_set_shop_money_amount {
    type: string
    sql: ${TABLE}."line_item_total_discount_set_shop_money_amount" ;;
  }

  dimension: line_item_total_discount_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}."line_item_total_discount_set_shop_money_currency_code" ;;
  }

  dimension: line_item_variant_id {
    type: string
    sql: ${TABLE}."line_item_variant_id" ;;
  }

  dimension: line_item_variant_inventory_management {
    type: string
    sql: ${TABLE}."line_item_variant_inventory_management" ;;
  }

  dimension: line_item_variant_title {
    type: string
    sql: ${TABLE}."line_item_variant_title" ;;
  }

  dimension: line_item_vendor {
    type: string
    sql: ${TABLE}."line_item_vendor" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."location_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: restock_type {
    type: string
    sql: ${TABLE}."restock_type" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}."subtotal" ;;
  }

  dimension: subtotal_set_presentment_money_amount {
    type: string
    sql: ${TABLE}."subtotal_set_presentment_money_amount" ;;
  }

  dimension: subtotal_set_presentment_money_currency_code {
    type: string
    sql: ${TABLE}."subtotal_set_presentment_money_currency_code" ;;
  }

  dimension: subtotal_set_shop_money_amount {
    type: string
    sql: ${TABLE}."subtotal_set_shop_money_amount" ;;
  }

  dimension: subtotal_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}."subtotal_set_shop_money_currency_code" ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}."total_tax" ;;
  }

  dimension: total_tax_set_presentment_money_amount {
    type: string
    sql: ${TABLE}."total_tax_set_presentment_money_amount" ;;
  }

  dimension: total_tax_set_presentment_money_currency_code {
    type: string
    sql: ${TABLE}."total_tax_set_presentment_money_currency_code" ;;
  }

  dimension: total_tax_set_shop_money_amount {
    type: string
    sql: ${TABLE}."total_tax_set_shop_money_amount" ;;
  }

  dimension: total_tax_set_shop_money_currency_code {
    type: string
    sql: ${TABLE}."total_tax_set_shop_money_currency_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, line_item_name]
  }
}
