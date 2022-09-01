# The name of this view in Looker is "Shopify Orders"
view: shopify_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shopify_orders ;;
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

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}."_sdc_table_version" ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}."admin_graphql_api_id" ;;
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}."app_id" ;;
  }

  dimension: billing_address__address1 {
    type: string
    sql: ${TABLE}."billing_address__address1" ;;
  }

  dimension: billing_address__address2 {
    type: string
    sql: ${TABLE}."billing_address__address2" ;;
  }

  dimension: billing_address__city {
    type: string
    sql: ${TABLE}."billing_address__city" ;;
  }

  dimension: billing_address__company {
    type: string
    sql: ${TABLE}."billing_address__company" ;;
  }

  dimension: billing_address__country {
    type: string
    sql: ${TABLE}."billing_address__country" ;;
  }

  dimension: billing_address__country_code {
    type: string
    sql: ${TABLE}."billing_address__country_code" ;;
  }

  dimension: billing_address__first_name {
    type: string
    sql: ${TABLE}."billing_address__first_name" ;;
  }

  dimension: billing_address__last_name {
    type: string
    sql: ${TABLE}."billing_address__last_name" ;;
  }

  dimension: billing_address__latitude {
    type: number
    sql: ${TABLE}."billing_address__latitude" ;;
  }

  dimension: billing_address__longitude {
    type: number
    sql: ${TABLE}."billing_address__longitude" ;;
  }

  dimension: billing_address__name {
    type: string
    sql: ${TABLE}."billing_address__name" ;;
  }

  dimension: billing_address__phone {
    type: string
    sql: ${TABLE}."billing_address__phone" ;;
  }

  dimension: billing_address__province {
    type: string
    sql: ${TABLE}."billing_address__province" ;;
  }

  dimension: billing_address__province_code {
    type: string
    sql: ${TABLE}."billing_address__province_code" ;;
  }

  dimension: billing_address__zip {
    type: string
    sql: ${TABLE}."billing_address__zip" ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}."browser_ip" ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}."buyer_accepts_marketing" ;;
  }

  dimension: cam_name {
    type: string
    sql: ${TABLE}."cam_name" ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}."cancel_reason" ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}."cancelled_at" ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}."cart_token" ;;
  }

  dimension: checkout_id {
    type: number
    sql: ${TABLE}."checkout_id" ;;
  }

  dimension: checkout_token {
    type: string
    sql: ${TABLE}."checkout_token" ;;
  }

  dimension: client_details__accept_language {
    type: string
    sql: ${TABLE}."client_details__accept_language" ;;
  }

  dimension: client_details__browser_height {
    type: number
    sql: ${TABLE}."client_details__browser_height" ;;
  }

  dimension: client_details__browser_ip {
    type: string
    sql: ${TABLE}."client_details__browser_ip" ;;
  }

  dimension: client_details__browser_width {
    type: number
    sql: ${TABLE}."client_details__browser_width" ;;
  }

  dimension: client_details__user_agent {
    type: string
    sql: ${TABLE}."client_details__user_agent" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."closed_at" ;;
  }

  dimension: confirmed {
    type: yesno
    sql: ${TABLE}."confirmed" ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}."contact_email" ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customer__accepts_marketing {
    type: yesno
    sql: ${TABLE}."customer__accepts_marketing" ;;
  }

  dimension_group: customer__accepts_marketing_updated {
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
    sql: ${TABLE}."customer__accepts_marketing_updated_at" ;;
  }

  dimension: customer__admin_graphql_api_id {
    type: string
    sql: ${TABLE}."customer__admin_graphql_api_id" ;;
  }

  dimension_group: customer__created {
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
    sql: ${TABLE}."customer__created_at" ;;
  }

  dimension: customer__currency {
    type: string
    sql: ${TABLE}."customer__currency" ;;
  }

  dimension: customer__default_address__address1 {
    type: string
    sql: ${TABLE}."customer__default_address__address1" ;;
  }

  dimension: customer__default_address__address2 {
    type: string
    sql: ${TABLE}."customer__default_address__address2" ;;
  }

  dimension: customer__default_address__city {
    type: string
    sql: ${TABLE}."customer__default_address__city" ;;
  }

  dimension: customer__default_address__company {
    type: string
    sql: ${TABLE}."customer__default_address__company" ;;
  }

  dimension: customer__default_address__country {
    type: string
    sql: ${TABLE}."customer__default_address__country" ;;
  }

  dimension: customer__default_address__country_code {
    type: string
    sql: ${TABLE}."customer__default_address__country_code" ;;
  }

  dimension: customer__default_address__country_name {
    type: string
    sql: ${TABLE}."customer__default_address__country_name" ;;
  }

  dimension: customer__default_address__customer_id {
    type: number
    sql: ${TABLE}."customer__default_address__customer_id" ;;
  }

  dimension: customer__default_address__default {
    type: yesno
    sql: ${TABLE}."customer__default_address__default" ;;
  }

  dimension: customer__default_address__first_name {
    type: string
    sql: ${TABLE}."customer__default_address__first_name" ;;
  }

  dimension: customer__default_address__id {
    type: number
    sql: ${TABLE}."customer__default_address__id" ;;
  }

  dimension: customer__default_address__last_name {
    type: string
    sql: ${TABLE}."customer__default_address__last_name" ;;
  }

  dimension: customer__default_address__name {
    type: string
    sql: ${TABLE}."customer__default_address__name" ;;
  }

  dimension: customer__default_address__phone {
    type: string
    sql: ${TABLE}."customer__default_address__phone" ;;
  }

  dimension: customer__default_address__province {
    type: string
    sql: ${TABLE}."customer__default_address__province" ;;
  }

  dimension: customer__default_address__province_code {
    type: string
    sql: ${TABLE}."customer__default_address__province_code" ;;
  }

  dimension: customer__default_address__zip {
    type: string
    sql: ${TABLE}."customer__default_address__zip" ;;
  }

  dimension: customer__email {
    type: string
    sql: ${TABLE}."customer__email" ;;
  }

  dimension: customer__first_name {
    type: string
    sql: ${TABLE}."customer__first_name" ;;
  }

  dimension: customer__id {
    type: number
    sql: ${TABLE}."customer__id" ;;
  }

  dimension: customer__last_name {
    type: string
    sql: ${TABLE}."customer__last_name" ;;
  }

  dimension: customer__last_order_id {
    type: number
    sql: ${TABLE}."customer__last_order_id" ;;
  }

  dimension: customer__last_order_name {
    type: string
    sql: ${TABLE}."customer__last_order_name" ;;
  }

  dimension: customer__note {
    type: string
    sql: ${TABLE}."customer__note" ;;
  }

  dimension: customer__orders_count {
    type: number
    sql: ${TABLE}."customer__orders_count" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer__orders_count {
    type: sum
    sql: ${customer__orders_count} ;;
  }

  measure: average_customer__orders_count {
    type: average
    sql: ${customer__orders_count} ;;
  }

  dimension: customer__phone {
    type: string
    sql: ${TABLE}."customer__phone" ;;
  }

  dimension: customer__state {
    type: string
    sql: ${TABLE}."customer__state" ;;
  }

  dimension: customer__tags {
    type: string
    sql: ${TABLE}."customer__tags" ;;
  }

  dimension: customer__tax_exempt {
    type: yesno
    sql: ${TABLE}."customer__tax_exempt" ;;
  }

  dimension: customer__total_spent {
    type: string
    sql: ${TABLE}."customer__total_spent" ;;
  }

  dimension_group: customer__updated {
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
    sql: ${TABLE}."customer__updated_at" ;;
  }

  dimension: customer__verified_email {
    type: yesno
    sql: ${TABLE}."customer__verified_email" ;;
  }

  dimension: customer_locale {
    type: string
    sql: ${TABLE}."customer_locale" ;;
  }

  dimension: cx_team {
    type: string
    sql: ${TABLE}."cx_team" ;;
  }

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

  dimension: gateway {
    type: string
    sql: ${TABLE}."gateway" ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}."landing_site" ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}."location_id" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}."number" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."order_number" ;;
  }

  dimension: order_status_url {
    type: string
    sql: ${TABLE}."order_status_url" ;;
  }

  dimension: payment_details__avs_result_code {
    type: string
    sql: ${TABLE}."payment_details__avs_result_code" ;;
  }

  dimension: payment_details__credit_card_bin {
    type: string
    sql: ${TABLE}."payment_details__credit_card_bin" ;;
  }

  dimension: payment_details__credit_card_company {
    type: string
    sql: ${TABLE}."payment_details__credit_card_company" ;;
  }

  dimension: payment_details__credit_card_number {
    type: string
    sql: ${TABLE}."payment_details__credit_card_number" ;;
  }

  dimension: payment_details__cvv_result_code {
    type: string
    sql: ${TABLE}."payment_details__cvv_result_code" ;;
  }

  dimension: presentment_currency {
    type: string
    sql: ${TABLE}."presentment_currency" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}."processing_method" ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}."referring_site" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."sales_channel" ;;
  }

  dimension: sales_rep_name {
    type: string
    sql: ${TABLE}."sales_rep_name" ;;
  }

  dimension: shipping_address__address1 {
    type: string
    sql: ${TABLE}."shipping_address__address1" ;;
  }

  dimension: shipping_address__address2 {
    type: string
    sql: ${TABLE}."shipping_address__address2" ;;
  }

  dimension: shipping_address__city {
    type: string
    sql: ${TABLE}."shipping_address__city" ;;
  }

  dimension: shipping_address__company {
    type: string
    sql: ${TABLE}."shipping_address__company" ;;
  }

  dimension: shipping_address__country {
    type: string
    sql: ${TABLE}."shipping_address__country" ;;
  }

  dimension: shipping_address__country_code {
    type: string
    sql: ${TABLE}."shipping_address__country_code" ;;
  }

  dimension: shipping_address__first_name {
    type: string
    sql: ${TABLE}."shipping_address__first_name" ;;
  }

  dimension: shipping_address__last_name {
    type: string
    sql: ${TABLE}."shipping_address__last_name" ;;
  }

  dimension: shipping_address__latitude {
    type: number
    sql: ${TABLE}."shipping_address__latitude" ;;
  }

  dimension: shipping_address__longitude {
    type: number
    sql: ${TABLE}."shipping_address__longitude" ;;
  }

  dimension: shipping_address__name {
    type: string
    sql: ${TABLE}."shipping_address__name" ;;
  }

  dimension: shipping_address__phone {
    type: string
    sql: ${TABLE}."shipping_address__phone" ;;
  }

  dimension: shipping_address__province {
    type: string
    sql: ${TABLE}."shipping_address__province" ;;
  }

  dimension: shipping_address__province_code {
    type: string
    sql: ${TABLE}."shipping_address__province_code" ;;
  }

  dimension: shipping_address__zip {
    type: string
    sql: ${TABLE}."shipping_address__zip" ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}."source_name" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}."subtotal_price" ;;
  }

  dimension: subtotal_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."subtotal_price_set__presentment_money__amount" ;;
  }

  dimension: subtotal_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."subtotal_price_set__presentment_money__currency_code" ;;
  }

  dimension: subtotal_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."subtotal_price_set__shop_money__amount" ;;
  }

  dimension: subtotal_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."subtotal_price_set__shop_money__currency_code" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."tags" ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}."taxes_included" ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}."test" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}."total_discounts" ;;
  }

  dimension: total_discounts_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_discounts_set__presentment_money__amount" ;;
  }

  dimension: total_discounts_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."total_discounts_set__presentment_money__currency_code" ;;
  }

  dimension: total_discounts_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_discounts_set__shop_money__amount" ;;
  }

  dimension: total_discounts_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_discounts_set__shop_money__currency_code" ;;
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}."total_line_items_price" ;;
  }

  dimension: total_line_items_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_line_items_price_set__presentment_money__amount" ;;
  }

  dimension: total_line_items_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_line_items_price_set__shop_money__amount" ;;
  }

  dimension: total_line_items_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_line_items_price_set__shop_money__currency_code" ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}."total_price" ;;
  }

  dimension: total_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_price_set__presentment_money__amount" ;;
  }

  dimension: total_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."total_price_set__presentment_money__currency_code" ;;
  }

  dimension: total_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_price_set__shop_money__amount" ;;
  }

  dimension: total_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_price_set__shop_money__currency_code" ;;
  }

  dimension: total_price_usd {
    type: number
    sql: ${TABLE}."total_price_usd" ;;
  }

  dimension: total_shipping_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_shipping_price_set__presentment_money__amount" ;;
  }

  dimension: total_shipping_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."total_shipping_price_set__presentment_money__currency_code" ;;
  }

  dimension: total_shipping_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_shipping_price_set__shop_money__amount" ;;
  }

  dimension: total_shipping_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_shipping_price_set__shop_money__currency_code" ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}."total_tax" ;;
  }

  dimension: total_tax_set__presentment_money__amount {
    type: string
    sql: ${TABLE}."total_tax_set__presentment_money__amount" ;;
  }

  dimension: total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}."total_tax_set__presentment_money__currency_code" ;;
  }

  dimension: total_tax_set__shop_money__amount {
    type: string
    sql: ${TABLE}."total_tax_set__shop_money__amount" ;;
  }

  dimension: total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}."total_tax_set__shop_money__currency_code" ;;
  }

  dimension: total_tip_received {
    type: string
    sql: ${TABLE}."total_tip_received" ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}."total_weight" ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      billing_address__first_name,
      billing_address__last_name,
      billing_address__name,
      customer__default_address__country_name,
      customer__default_address__first_name,
      customer__default_address__last_name,
      customer__default_address__name,
      customer__first_name,
      customer__last_name,
      customer__last_order_name,
      name,
      shipping_address__first_name,
      shipping_address__last_name,
      shipping_address__name,
      source_name,
      cam_name,
      sales_rep_name
    ]
  }
}
