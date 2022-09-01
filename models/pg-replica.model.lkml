# Define the database connection to be used for this model.
connection: "pg-replica"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: pg-replica_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pg-replica_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Pg-replica"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: amazon_seller_athena {}

explore: amazon_vendor {}

explore: country_mapping {}

explore: country_name {}

explore: currency_exchange_rate {}

explore: fulfillments {}

explore: journal_entry_details {}

explore: netsuite_customer_address {}

explore: netsuite_fulfillments {}

explore: netsuite_fulfillments_line_items {}

explore: netsuite_orders {}

explore: netsuite_orders_line_items {}

explore: netsuite_vendors_view {}

explore: shopify_customers {}

explore: shopify_fulfillments {
  join: fulfillments {
    type: left_outer
    sql_on: ${shopify_fulfillments.fulfillment_id} = ${fulfillments.id} ;;
    relationship: many_to_one
  }
}

explore: shopify_fulfillments_line_items {
  join: fulfillments {
    type: left_outer
    sql_on: ${shopify_fulfillments_line_items.fulfillment_id} = ${fulfillments.id} ;;
    relationship: many_to_one
  }
}

explore: shopify_order_refunds_refund_line_items {}

explore: shopify_orders {}

explore: shopify_orders_line_items {}

explore: shopify_orders_note_attributes {}

explore: shopify_products {}

explore: sku_mapping {}

explore: starin_line_items {}
