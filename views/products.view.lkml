view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand {
    type: string
    sql:
    CASE
      WHEN ${TABLE}.id = 12054 THEN 'Allegra K'
      WHEN ${TABLE}.id = 1828 THEN 'Nautica'
      WHEN ${TABLE}.id = 131 THEN 'Calvin Klein'
      WHEN ${TABLE}.id = 402 THEN 'Carhartt'
      WHEN ${TABLE}.id = 1655 THEN 'Quiksilver'
      WHEN ${TABLE}.id = 264 THEN 'Tommy Hilfiger'
      WHEN ${TABLE}.id = 921 THEN 'Volcom'
      WHEN ${TABLE}.id = 2566 THEN 'Hanes'
      WHEN ${TABLE}.id = 2347 THEN 'Columbia'
      WHEN ${TABLE}.id = 983 THEN 'Hurley'
      WHEN ${TABLE}.id = 1112 THEN 'Dockers'
      WHEN ${TABLE}.id = 383 THEN 'Orvis'
      ELSE 'null'
    END ;;

    link: {
      label: "Explore Brand Link"
      url: "
      {% if value == 'Allegra K' %} https://www.amazon.com/allegra-k
      {% elsif value == 'Nautica' %} https://www.nautica.com
      {% elsif value == 'Calvin Klein' %} https://www.calvinklein.us
      {% elsif value == 'Carhartt' %} https://www.carhartt.com
      {% elsif value == 'Quiksilver' %} https://www.quiksilver.com
      {% elsif value == 'Tommy Hilfiger' %} https://usa.tommy.com
      {% elsif value == 'Volcom' %} https://www.volcom.com
      {% elsif value == 'Hanes' %} https://www.hanes.com
      {% elsif value == 'Columbia' %} https://www.columbia.com
      {% elsif value == 'Hurley' %} https://www.hurley.com
      {% elsif value == 'Dockers' %} https://www.dockers.com
      {% elsif value == 'Orvis' %} https://www.orvis.com
      {% else %} https://www.google.com/search?q={{ value | encode_uri }}
      {% endif %}"
      icon_url: "https://www.google.com/favicon.ico"
    }
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
