
view: dev_prod_test {
  sql_table_name:
    -- if dev -- demo_db.orders
    -- if prod -- demo_db.order_items
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

}
