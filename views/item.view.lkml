view: item {
  sql_table_name: TPC_DS_DEV.ITEM ;;
  drill_fields: [i_item_id]

  dimension: i_item_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.I_ITEM_ID ;;
  }

  dimension: i_brand {
    type: string
    sql: ${TABLE}.I_BRAND ;;
  }

  dimension: i_brand_id {
    type: number
    sql: ${TABLE}.I_BRAND_ID ;;
  }

  dimension: i_category {
    type: string
    sql: ${TABLE}.I_CATEGORY ;;
  }

  dimension: i_category_id {
    type: number
    sql: ${TABLE}.I_CATEGORY_ID ;;
  }

  dimension: i_class {
    type: string
    sql: ${TABLE}.I_CLASS ;;
  }

  dimension: i_class_id {
    type: number
    sql: ${TABLE}.I_CLASS_ID ;;
  }

  dimension: i_color {
    type: string
    sql: ${TABLE}.I_COLOR ;;
  }

  dimension: i_container {
    type: string
    sql: ${TABLE}.I_CONTAINER ;;
  }

  dimension: i_current_price {
    type: number
    sql: ${TABLE}.I_CURRENT_PRICE ;;
  }

  dimension: i_formulation {
    type: string
    sql: ${TABLE}.I_FORMULATION ;;
  }

  dimension: i_item_desc {
    type: string
    sql: ${TABLE}.I_ITEM_DESC ;;
  }

  dimension: i_item_sk {
    type: number
    sql: ${TABLE}.I_ITEM_SK ;;
  }

  dimension: i_manager_id {
    type: number
    sql: ${TABLE}.I_MANAGER_ID ;;
  }

  dimension: i_manufact {
    type: string
    sql: ${TABLE}.I_MANUFACT ;;
  }

  dimension: i_manufact_id {
    type: number
    sql: ${TABLE}.I_MANUFACT_ID ;;
  }

  dimension: i_product_name {
    type: string
    sql: ${TABLE}.I_PRODUCT_NAME ;;
  }

  dimension_group: i_rec_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.I_REC_END_DATE ;;
  }

  dimension_group: i_rec_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.I_REC_START_DATE ;;
  }

  dimension: i_size {
    type: string
    sql: ${TABLE}.I_SIZE ;;
  }

  dimension: i_units {
    type: string
    sql: ${TABLE}.I_UNITS ;;
  }

  dimension: i_wholesale_cost {
    type: number
    sql: ${TABLE}.I_WHOLESALE_COST ;;
  }

  measure: count {
    type: count
    drill_fields: [i_item_id, i_product_name]
  }
}
