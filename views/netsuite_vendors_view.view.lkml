# The name of this view in Looker is "Netsuite Vendors View"
view: netsuite_vendors_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.netsuite_vendors_view ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: marketplace_segment {
    type: string
    sql: ${TABLE}."marketplace_segment" ;;
  }

  dimension: vendor_entity_id {
    type: string
    sql: ${TABLE}."vendor_entity_id" ;;
  }

  dimension: vendor_entity_internal_id {
    type: string
    sql: ${TABLE}."vendor_entity_internal_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
