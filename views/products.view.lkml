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
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    link: {
      label: "dress search "
      url: "https://www.google.com/search?q=dress&sca_esv=d76d8f0686fb3adf&rlz=1CAZVTZ_enIN1085&sxsrf=ADLYWIIlBOm8sxkomj52KdpH6qmvUgMcUA%3A1733119685964&ei=xU5NZ_XDOtTh2roPv6uz-Qs&ved=0ahUKEwi1uvD5tYiKAxXUsFYBHb_VLL8Q4dUDCBA&uact=5&oq=dress&gs_lp=Egxnd3Mtd2l6LXNlcnAiBWRyZXNzMgoQIxiABBgnGIoFMggQABiABBixAzIIEAAYgAQYsQMyChAAGIAEGEMYigUyCBAAGIAEGLEDMggQABiABBixAzIFEAAYgAQyBRAAGIAEMggQABiABBixAzILEAAYgAQYsQMYgwFI2SJQrg5YwyFwA3gAkAECmAHIAqABsg6qAQcwLjQuMi4yuAEDyAEA-AEBmAIJoALBCqgCEsICExAuGIAEGLADGNEDGEMYxwEYigXCAg0QABiABBiwAxhDGIoFwgIIEAAYgAQYsAPCAgkQABiwAxgHGB7CAg4QLhiABBixAxjRAxjHAcICCBAuGIAEGLEDwgILEAAYgAQYsQMYigXCAh0QLhiABBixAxjRAxjHARiXBRjcBBjeBBjgBNgBAcICDhAAGIAEGJECGLEDGIoFwgILEAAYgAQYkQIYigXCAg4QABiABBixAxiDARiKBcICBxAjGCcY6gLCAhkQLhiABBjRAxhDGLQCGMcBGIoFGOoC2AEBwgITEAAYgAQYQxi0AhiKBRjqAtgBAcICBBAjGCfCAhEQLhiABBixAxjRAxiDARjHAcICERAuGIAEGLEDGNEDGNQCGMcBmAMUiAYBkAYKugYGCAEQARgUkgcFMy4xLjWgB6pY&sclient=gws-wiz-serp"
    }
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
