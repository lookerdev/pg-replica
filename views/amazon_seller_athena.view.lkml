# The name of this view in Looker is "Amazon Seller Athena"
view: amazon_seller_athena {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.amazon_seller_athena ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address Type" in Explore.

  dimension: address_type {
    type: string
    sql: ${TABLE}."address_type" ;;
  }

  dimension: amazon_order_id {
    type: string
    sql: ${TABLE}."amazon_order_id" ;;
  }

  dimension: asin {
    type: string
    sql: ${TABLE}."asin" ;;
  }

  dimension: buyer_company_name {
    type: string
    sql: ${TABLE}."buyer_company_name" ;;
  }

  dimension: buyer_cst_number {
    type: string
    sql: ${TABLE}."buyer_cst_number" ;;
  }

  dimension: buyer_tax_registration_country {
    type: string
    sql: ${TABLE}."buyer_tax_registration_country" ;;
  }

  dimension: buyer_tax_registration_id {
    type: string
    sql: ${TABLE}."buyer_tax_registration_id" ;;
  }

  dimension: buyer_tax_registration_type {
    type: string
    sql: ${TABLE}."buyer_tax_registration_type" ;;
  }

  dimension: buyer_vat_number {
    type: string
    sql: ${TABLE}."buyer_vat_number" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customized_page {
    type: string
    sql: ${TABLE}."customized_page" ;;
  }

  dimension: customized_url {
    type: string
    sql: ${TABLE}."customized_url" ;;
  }

  dimension: dir0 {
    type: string
    sql: ${TABLE}."dir0" ;;
  }

  dimension: fulfilled_by {
    type: string
    sql: ${TABLE}."fulfilled_by" ;;
  }

  dimension: fulfillment_channel {
    type: string
    sql: ${TABLE}."fulfillment_channel" ;;
  }

  dimension: gift_wrap_price {
    type: string
    sql: ${TABLE}."gift_wrap_price" ;;
  }

  dimension: gift_wrap_tax {
    type: string
    sql: ${TABLE}."gift_wrap_tax" ;;
  }

  dimension: is_amazon_invoiced {
    type: string
    sql: ${TABLE}."is_amazon_invoiced" ;;
  }

  dimension: is_business_order {
    type: yesno
    sql: ${TABLE}."is_business_order" ;;
  }

  dimension: is_exchange_order {
    type: string
    sql: ${TABLE}."is_exchange_order" ;;
  }

  dimension: is_heavy_or_bulky {
    type: string
    sql: ${TABLE}."is_heavy_or_bulky" ;;
  }

  dimension: is_replacement_order {
    type: string
    sql: ${TABLE}."is_replacement_order" ;;
  }

  dimension: is_sold_by_ab {
    type: yesno
    sql: ${TABLE}."is_sold_by_ab" ;;
  }

  dimension: is_tax_exempted {
    type: string
    sql: ${TABLE}."is_tax_exempted" ;;
  }

  dimension: is_transparency {
    type: string
    sql: ${TABLE}."is_transparency" ;;
  }

  dimension: item_extensions_data {
    type: string
    sql: ${TABLE}."item_extensions_data" ;;
  }

  dimension: item_price {
    type: number
    sql: ${TABLE}."item_price" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_item_price {
    type: sum
    sql: ${item_price} ;;
  }

  measure: average_item_price {
    type: average
    sql: ${item_price} ;;
  }

  dimension: item_promotion_discount {
    type: string
    sql: ${TABLE}."item_promotion_discount" ;;
  }

  dimension: item_status {
    type: string
    sql: ${TABLE}."item_status" ;;
  }

  dimension: item_tax {
    type: number
    sql: ${TABLE}."item_tax" ;;
  }

  dimension: last_updated_date {
    type: string
    sql: ${TABLE}."last_updated_date" ;;
  }

  dimension: license_expiration_date {
    type: string
    sql: ${TABLE}."license_expiration_date" ;;
  }

  dimension: license_number {
    type: string
    sql: ${TABLE}."license_number" ;;
  }

  dimension: license_state {
    type: string
    sql: ${TABLE}."license_state" ;;
  }

  dimension: licensee_name {
    type: string
    sql: ${TABLE}."licensee_name" ;;
  }

  dimension: merchant_order_id {
    type: string
    sql: ${TABLE}."merchant_order_id" ;;
  }

  dimension: number_of_items {
    type: number
    sql: ${TABLE}."number_of_items" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ob {
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
    sql: ${TABLE}."ob_date" ;;
  }

  dimension: ob_file_name {
    type: string
    sql: ${TABLE}."ob_file_name" ;;
  }

  dimension_group: ob_modified {
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
    sql: ${TABLE}."ob_modified_date" ;;
  }

  dimension: ob_mws_marketplace_id {
    type: string
    sql: ${TABLE}."ob_mws_marketplace_id" ;;
  }

  dimension: ob_mws_seller_id {
    type: string
    sql: ${TABLE}."ob_mws_seller_id" ;;
  }

  dimension: ob_processed_at {
    type: string
    sql: ${TABLE}."ob_processed_at" ;;
  }

  dimension: ob_transaction_id {
    type: string
    sql: ${TABLE}."ob_transaction_id" ;;
  }

  dimension: order_channel {
    type: string
    sql: ${TABLE}."order_channel" ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}."order_status" ;;
  }

  dimension: original_order_id {
    type: string
    sql: ${TABLE}."original_order_id" ;;
  }

  dimension: payment_method_details {
    type: string
    sql: ${TABLE}."payment_method_details" ;;
  }

  dimension: price_designation {
    type: string
    sql: ${TABLE}."price_designation" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: promotion_ids {
    type: string
    sql: ${TABLE}."promotion_ids" ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}."purchase_date" ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}."purchase_order_number" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: s3_doc {
    type: string
    sql: ${TABLE}."s3_doc" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."sales_channel" ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}."ship_city" ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}."ship_country" ;;
  }

  dimension: ship_postal_code {
    type: string
    sql: ${TABLE}."ship_postal_code" ;;
  }

  dimension: ship_promotion_discount {
    type: number
    sql: ${TABLE}."ship_promotion_discount" ;;
  }

  dimension: ship_service_level {
    type: string
    sql: ${TABLE}."ship_service_level" ;;
  }

  dimension: ship_state {
    type: string
    sql: ${TABLE}."ship_state" ;;
  }

  dimension: shipping_price {
    type: number
    sql: ${TABLE}."shipping_price" ;;
  }

  dimension: shipping_tax {
    type: number
    sql: ${TABLE}."shipping_tax" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: tax_collection_model {
    type: string
    sql: ${TABLE}."tax_collection_model" ;;
  }

  dimension: tax_collection_responsible_party {
    type: string
    sql: ${TABLE}."tax_collection_responsible_party" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."url" ;;
  }

  dimension: vat_exclusive_giftwrap_price {
    type: string
    sql: ${TABLE}."vat_exclusive_giftwrap_price" ;;
  }

  dimension: vat_exclusive_item_price {
    type: string
    sql: ${TABLE}."vat_exclusive_item_price" ;;
  }

  dimension: vat_exclusive_shipping_price {
    type: string
    sql: ${TABLE}."vat_exclusive_shipping_price" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, licensee_name, buyer_company_name, ob_file_name]
  }
}
