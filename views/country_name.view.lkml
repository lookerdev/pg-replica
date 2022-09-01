# The name of this view in Looker is "Country Name"
view: country_name {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.country_name ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country Value" in Explore.

  dimension: country__value {
    type: string
    sql: ${TABLE}."country__value" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."country_code" ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}."country_name" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."world_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
