view: sql_derived {

    derived_table: {
      datagroup_trigger: yash_test_api_new_default_datagroup
      indexes: ["order_id"]
      sql: SELECT
          orders.id  AS `orders.id`,
          order_items.id  AS `order_items.id`,
          order_items.inventory_item_id  AS `order_items.inventory_item_id`,
              (DATE(CONVERT_TZ(order_items.returned_at ,'UTC','America/Los_Angeles'))) AS `order_items.returned_date`
      FROM demo_db.order_items  AS order_items
      LEFT JOIN demo_db.orders  AS orders ON order_items.order_id = orders.id
      LIMIT 500 ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: orders_id {
      type: number
      sql: ${TABLE}.`orders.id` ;;
    }

    dimension: order_items_id {
      type: number
      sql: ${TABLE}.`order_items.id` ;;
    }

    dimension: order_items_inventory_item_id {
      type: number
      sql: ${TABLE}.`order_items.inventory_item_id` ;;
    }

    dimension: order_items_returned_date {
      type: date
      sql: ${TABLE}.`order_items.returned_date` ;;
    }

    set: detail {
      fields: [
        orders_id,
        order_items_id,
        order_items_inventory_item_id,
        order_items_returned_date
      ]
    }
  }
