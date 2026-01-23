view: orders_dt {

  derived_table: {
    sql:
    select
    id,
    user_id,
    status,
    created_at
    FROM
    {% parameter table %}
    {% if orders_dt.status_filter._is_filtered %}
    WHERE
    status = {{_filters['orders_dt.status_filter'] | sql_quote }}
    {% endif %}
    ;;
  }


  parameter: table {
    type:  unquoted
    default_value: "demo_db.orders"
  }

  filter: status_filter{
    type: string
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: status {
    type: string
    sql:  ${TABLE}.status ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  measure: count {
    type: count
  }

 }
