view: web_site {
  sql_table_name: TPC_DS.WEB_SITE ;;
  drill_fields: [web_site_id]

  dimension: web_site_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WEB_SITE_ID ;;
  }

  dimension: web_city {
    type: string
    sql: ${TABLE}.WEB_CITY ;;
  }

  dimension: web_class {
    type: string
    sql: ${TABLE}.WEB_CLASS ;;
  }

  dimension: web_close_date_sk {
    type: number
    sql: ${TABLE}.WEB_CLOSE_DATE_SK ;;
  }

  dimension: web_company_id {
    type: number
    sql: ${TABLE}.WEB_COMPANY_ID ;;
  }

  dimension: web_company_name {
    type: string
    sql: ${TABLE}.WEB_COMPANY_NAME ;;
  }

  dimension: web_country {
    type: string
    sql: ${TABLE}.WEB_COUNTRY ;;
  }

  dimension: web_county {
    type: string
    sql: ${TABLE}.WEB_COUNTY ;;
  }

  dimension: web_gmt_offset {
    type: number
    sql: ${TABLE}.WEB_GMT_OFFSET ;;
  }

  dimension: web_manager {
    type: string
    sql: ${TABLE}.WEB_MANAGER ;;
  }

  dimension: web_market_manager {
    type: string
    sql: ${TABLE}.WEB_MARKET_MANAGER ;;
  }

  dimension: web_mkt_class {
    type: string
    sql: ${TABLE}.WEB_MKT_CLASS ;;
  }

  dimension: web_mkt_desc {
    type: string
    sql: ${TABLE}.WEB_MKT_DESC ;;
  }

  dimension: web_mkt_id {
    type: number
    sql: ${TABLE}.WEB_MKT_ID ;;
  }

  dimension: web_name {
    type: string
    sql: ${TABLE}.WEB_NAME ;;
  }

  dimension: web_open_date_sk {
    type: number
    sql: ${TABLE}.WEB_OPEN_DATE_SK ;;
  }

  dimension_group: web_rec_end {
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
    sql: ${TABLE}.WEB_REC_END_DATE ;;
  }

  dimension_group: web_rec_start {
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
    sql: ${TABLE}.WEB_REC_START_DATE ;;
  }

  dimension: web_site_sk {
    type: number
    sql: ${TABLE}.WEB_SITE_SK ;;
  }

  dimension: web_state {
    type: string
    sql: ${TABLE}.WEB_STATE ;;
  }

  dimension: web_street_name {
    type: string
    sql: ${TABLE}.WEB_STREET_NAME ;;
  }

  dimension: web_street_number {
    type: string
    sql: ${TABLE}.WEB_STREET_NUMBER ;;
  }

  dimension: web_street_type {
    type: string
    sql: ${TABLE}.WEB_STREET_TYPE ;;
  }

  dimension: web_suite_number {
    type: string
    sql: ${TABLE}.WEB_SUITE_NUMBER ;;
  }

  dimension: web_tax_percentage {
    type: number
    sql: ${TABLE}.WEB_TAX_PERCENTAGE ;;
  }

  dimension: web_zip {
    type: string
    sql: ${TABLE}.WEB_ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [web_site_id, web_name, web_company_name, web_street_name]
  }
}
