connection: "thelook"

# include all the views
#test the pr
#testing
# create pull request
include: "/views/**/*.view.lkml"

datagroup: yash_test_api_new_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yash_test_api_new_default_datagroup

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: connection_reg_r3 {}

explore: countries {}

explore: customer {}

explore: day_of_week {}

explore: dept {}

explore: dummy {}

explore: employees {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fakeorders {
  join: orders {
    type: left_outer
    sql_on: ${fakeorders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fatal_error_user_derived_base {}

explore: flights {}

explore: foo {}

explore: human {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: incremental_pdts_test {}

explore: ints {}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: jdbc_connection_usage {}

explore: korean {}

explore: korean_string {}

explore: map_layer {}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

map_layer: test {
  # url: "https://tolu-demo.s3.eu-west-1.amazonaws.com/uk_postcode_district.json"
  # url: "https://data.transportation.gov/api/views/iwhi-vi5z/columns.json"
  # url: "https://raw.githubusercontent.com/OpenDataDE/State-zip-code-GeoJSON/master/ny_new_york_zip_codes_geo.min.json"
  # url: "https://raw.githack.com/johan/world.geo.json/tree/master/countries/USA"
  url: "https://gistcdn.githack.com/vinayssss/7bf7950d0f3f8112aff3d4747a5e746f/raw/17cb5ecd23a8ca8dfe2804d63c01607a1721b8dd/gistfile1.txt"
  # extents_json_url: "https://github.com/johan/world.geo.json/tree/master/countries/USA"
  # extents_json_url: "https://data.transportation.gov/api/views/iwhi-vi5z/columns.json"
  # extents_json_url: "https://tolu-demo.s3.eu-west-1.amazonaws.com/uk_postcode_district.json"

  # file: "/gz_2010_us_040_00_500k_(2).json"

}


explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_vijaya {
  join: orders {
    type: left_outer
    sql_on: ${order_items_vijaya.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items_vijaya.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_status_vijaya {}

explore: pegdates {}

explore: person {}

explore: persons {}

explore: persons2 {}

explore: products {}

explore: salary {
  join: dept {
    type: left_outer
    sql_on: ${salary.dept_id} = ${dept.dept_id} ;;
    relationship: many_to_one
  }
}

explore: sample_data {}

explore: sample_table {}

explore: sandbox_scratch {}

explore: saralooker {
  join: users {
    type: left_outer
    sql_on: ${saralooker.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: sequel_database_usage_v1 {}

explore: sequel_database_usage_v2 {}

explore: sindhu {
  join: users {
    type: left_outer
    sql_on: ${sindhu.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: special_charaters {}

explore: demo_db_temporary {}


explore: ten_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${ten_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: test {}

explore: testing_blob {}

explore: testing_blob_type {}

explore: test_bit {}

explore: test_bits {}

explore: test_date {}

explore: test_lav {}

explore: test_space_in_column_name {}

explore: thor {}

explore: users {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: viet {}

explore: vvimgsrc1onerroralert2ll {}

explore: xin_test_for_bug2 {}

explore: xss_test {}

explore: xss_test_1 {}

explore: xss_test_10 {}

explore: xss_test_11 {}

explore: xss_test_12 {}

explore: xss_test_13 {}

explore: xss_test_14 {}

explore: xss_test_15 {}

explore: xss_test_16 {}

explore: xss_test_2 {}

explore: xss_test_4 {}

explore: xss_test_5 {}

explore: xss_test_6 {}

explore: xss_test_7 {}

explore: xss_test_8 {}

explore: xss_test_9 {}
