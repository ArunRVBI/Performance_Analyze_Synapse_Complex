view: web_page {
  sql_table_name: TPC_DS.WEB_PAGE ;;
  drill_fields: [wp_web_page_id]

  dimension: wp_web_page_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WP_WEB_PAGE_ID ;;
  }

  dimension: wp_access_date_sk {
    type: number
    sql: ${TABLE}.WP_ACCESS_DATE_SK ;;
  }

  dimension: wp_autogen_flag {
    type: string
    sql: ${TABLE}.WP_AUTOGEN_FLAG ;;
  }

  dimension: wp_char_count {
    type: number
    sql: ${TABLE}.WP_CHAR_COUNT ;;
  }

  dimension: wp_creation_date_sk {
    type: number
    sql: ${TABLE}.WP_CREATION_DATE_SK ;;
  }

  dimension: wp_customer_sk {
    type: number
    sql: ${TABLE}.WP_CUSTOMER_SK ;;
  }

  dimension: wp_image_count {
    type: number
    sql: ${TABLE}.WP_IMAGE_COUNT ;;
  }

  dimension: wp_link_count {
    type: number
    sql: ${TABLE}.WP_LINK_COUNT ;;
  }

  dimension: wp_max_ad_count {
    type: number
    sql: ${TABLE}.WP_MAX_AD_COUNT ;;
  }

  dimension_group: wp_rec_end {
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
    sql: ${TABLE}.WP_REC_END_DATE ;;
  }

  dimension_group: wp_rec_start {
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
    sql: ${TABLE}.WP_REC_START_DATE ;;
  }

  dimension: wp_type {
    type: string
    sql: ${TABLE}.WP_TYPE ;;
  }

  dimension: wp_url {
    type: string
    sql: ${TABLE}.WP_URL ;;
  }

  dimension: wp_web_page_sk {
    type: number
    sql: ${TABLE}.WP_WEB_PAGE_SK ;;
  }

  measure: count {
    type: count
    drill_fields: [wp_web_page_id]
  }
}
