view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand_url {
    type: string

    label: "External Link URL"
    # Pointing to the 'brand' column as seen in your screenshot
    sql: ${TABLE}.brand ;;

    html:
    {% case value %}
      {% when 'Allegra K' %}
        <a href="https://www.amazon.com/allegra-k">https://www.amazon.com/allegra-k</a>
      {% when 'Nautica' %}
        <a href="https://www.nautica.com">https://www.nautica.com</a>
      {% when 'Calvin Klein' %}
        <a href="https://www.calvinklein.us">https://www.calvinklein.us</a>
      {% when 'Carhartt' %}
        <a href="https://www.carhartt.com">https://www.carhartt.com</a>
      {% when 'Quiksilver' %}
        <a href="https://www.quiksilver.com">https://www.quiksilver.com</a>
      {% when 'Tommy Hilfiger' %}
        <a href="https://usa.tommy.com">https://usa.tommy.com</a>
      {% when 'Volcom' %}
        <a href="https://www.volcom.com">https://www.volcom.com</a>
      {% when 'Hanes' %}
        <a href="https://www.hanes.com">https://www.hanes.com</a>
      {% when 'Columbia' %}
        <a href="https://www.columbia.com">https://www.columbia.com</a>
      {% when 'Hurley' %}
        <a href="https://www.hurley.com">https://www.hurley.com</a>
      {% when 'Dockers' %}
        <a href="https://www.dockers.com">https://www.dockers.com</a>
      {% when 'Orvis' %}
        <a href="https://www.orvis.com">https://www.orvis.com</a>
      {% else %}
        <a href="https://www.google.com/search?q={{ value | encode_uri }}">https://www.google.com/search?q={{ value | encode_uri }}</a>
    {% endcase %} ;;
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
