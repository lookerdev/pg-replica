# The name of this view in Looker is "Netsuite Customer Address"
view: netsuite_customer_address {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.netsuite_customer_address ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address Text HTML" in Explore.

  dimension: address_text_html {
    type: string
    sql: ${TABLE}."address_text_html" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."company_name" ;;
  }

  dimension: custentitysalesforce_act_id {
    type: string
    sql: ${TABLE}."custentitysalesforce_act_id" ;;
  }

  dimension: customer_address_1 {
    type: string
    sql: ${TABLE}."customer_address_1" ;;
  }

  dimension: customer_address_2 {
    type: string
    sql: ${TABLE}."customer_address_2" ;;
  }

  dimension: customer_address_internal_id {
    type: string
    sql: ${TABLE}."customer_address_internal_id" ;;
  }

  dimension: customer_city {
    type: string
    sql: ${TABLE}."customer_city" ;;
  }

  dimension: customer_contact_email {
    type: string
    sql: ${TABLE}."customer_contact_email" ;;
  }

  dimension: customer_contact_name {
    type: string
    sql: ${TABLE}."customer_contact_name" ;;
  }

  dimension: customer_contact_phone {
    type: string
    sql: ${TABLE}."customer_contact_phone" ;;
  }

  dimension: customer_country {
    type: string
    sql: ${TABLE}."customer_country" ;;
  }

  dimension: customer_default_billing_address {
    type: yesno
    sql: ${TABLE}."customer_default_billing_address" ;;
  }

  dimension: customer_default_shipping_address {
    type: yesno
    sql: ${TABLE}."customer_default_shipping_address" ;;
  }

  dimension: customer_external_id {
    type: string
    sql: ${TABLE}."customer_external_id" ;;
  }

  dimension: customer_internal_id {
    type: string
    sql: ${TABLE}."customer_internal_id" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}."customer_state" ;;
  }

  dimension: customer_zipcode {
    type: string
    sql: ${TABLE}."customer_zipcode" ;;
  }

  dimension: manual_channel {
    type: string
    sql: ${TABLE}."manual_channel" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_contact_name, company_name, customer_name]
  }
}
