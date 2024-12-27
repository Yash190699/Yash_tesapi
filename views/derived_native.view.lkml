view: derived_native {


    derived_table: {
      datagroup_trigger: yash_test_api_new_default_datagroup
      explore_source: order_items {
        column: order_id {}
        column: created_date { field: orders.created_date }
        column: returned_date {}
        column: count {}
      }
    }
    dimension: order_id {
      description: ""
      type: number
    }
    dimension: created_date {
      description: ""
      type: date
    }
    dimension: returned_date {
      description: ""
      type: date
    }
    dimension: count {
      description: ""
      type: number
    }
    }
