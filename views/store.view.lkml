view: store {
  sql_table_name: TPC_DS.STORE ;;
  drill_fields: [s_store_id]

  dimension: s_store_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.S_STORE_ID ;;
  }

  dimension: s_city {
    type: string
    sql: ${TABLE}.S_CITY ;;
  }

  dimension: s_closed_date_sk {
    type: number
    sql: ${TABLE}.S_CLOSED_DATE_SK ;;
  }

  dimension: s_company_id {
    type: number
    sql: ${TABLE}.S_COMPANY_ID ;;
  }

  dimension: s_company_name {
    type: string
    sql: ${TABLE}.S_COMPANY_NAME ;;
  }

  dimension: s_country {
    type: string
    sql: ${TABLE}.S_COUNTRY ;;
  }

  dimension: s_county {
    type: string
    sql: ${TABLE}.S_COUNTY ;;
  }

  dimension: s_division_id {
    type: number
    sql: ${TABLE}.S_DIVISION_ID ;;
  }

  dimension: s_division_name {
    type: string
    sql: ${TABLE}.S_DIVISION_NAME ;;
  }

  dimension: s_floor_space {
    type: number
    sql: ${TABLE}.S_FLOOR_SPACE ;;
  }

  dimension: s_geography_class {
    type: string
    sql: ${TABLE}.S_GEOGRAPHY_CLASS ;;
  }

  dimension: s_gmt_offset {
    type: number
    sql: ${TABLE}.S_GMT_OFFSET ;;
  }

  dimension: s_hours {
    type: string
    sql: ${TABLE}.S_HOURS ;;
  }

  dimension: s_manager {
    type: string
    sql: ${TABLE}.S_MANAGER ;;
  }

  dimension: s_market_desc {
    type: string
    sql: ${TABLE}.S_MARKET_DESC ;;
  }

  dimension: s_market_id {
    type: number
    sql: ${TABLE}.S_MARKET_ID ;;
  }

  dimension: s_market_manager {
    type: string
    sql: ${TABLE}.S_MARKET_MANAGER ;;
  }

  dimension: s_number_employees {
    type: number
    sql: ${TABLE}.S_NUMBER_EMPLOYEES ;;
  }

  dimension_group: s_rec_end {
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
    sql: ${TABLE}.S_REC_END_DATE ;;
  }

  dimension_group: s_rec_start {
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
    sql: ${TABLE}.S_REC_START_DATE ;;
  }

  dimension: s_state {
    type: string
    sql: ${TABLE}.S_STATE ;;
  }

  dimension: s_store_name {
    type: string
    sql: ${TABLE}.S_STORE_NAME ;;
  }

  dimension: s_store_sk {
    type: number
    sql: ${TABLE}.S_STORE_SK ;;
  }

  dimension: s_street_name {
    type: string
    sql: ${TABLE}.S_STREET_NAME ;;
  }

  dimension: s_street_number {
    type: string
    sql: ${TABLE}.S_STREET_NUMBER ;;
  }

  dimension: s_street_type {
    type: string
    sql: ${TABLE}.S_STREET_TYPE ;;
  }

  dimension: s_suite_number {
    type: string
    sql: ${TABLE}.S_SUITE_NUMBER ;;
  }

  dimension: s_tax_precentage {
    type: number
    sql: ${TABLE}.S_TAX_PRECENTAGE ;;
  }

  dimension: s_zip {
    type: string
    sql: ${TABLE}.S_ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [s_store_id, s_store_name, s_division_name, s_company_name, s_street_name]
  }
}
