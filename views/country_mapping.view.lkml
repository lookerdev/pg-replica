# The name of this view in Looker is "Country Mapping"
view: country_mapping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.country_mapping ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country Name" in Explore.

  dimension: country_name {
    type: string
    sql: ${TABLE}."country_name" ;;
  }

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

  dimension: iso_alpha2_code {
    type: string
    sql: ${TABLE}."iso_alpha2_code" ;;
  }

  dimension: iso_alpha3_code {
    type: string
    sql: ${TABLE}."iso_alpha3_code" ;;
  }

  dimension: iso_country_short_name {
    type: string
    sql: ${TABLE}."iso_country_short_name" ;;
  }

  dimension: iso_numeric_code {
    type: string
    sql: ${TABLE}."iso_numeric_code" ;;
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

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: netsuite_country_value {
    type: string
    sql: ${TABLE}."netsuite_country_value" ;;
  }

  dimension: shopify_address_country {
    type: string
    sql: ${TABLE}."shopify_address_country" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, iso_country_short_name]
  }
}
