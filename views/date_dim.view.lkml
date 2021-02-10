view: date_dim {
  sql_table_name: TPC_DS_DEV.DATE_DIM ;;

  dimension: d_current_day {
    type: string
    sql: ${TABLE}.D_CURRENT_DAY ;;
  }

  dimension: d_current_month {
    type: string
    sql: ${TABLE}.D_CURRENT_MONTH ;;
  }

  dimension: d_current_quarter {
    type: string
    sql: ${TABLE}.D_CURRENT_QUARTER ;;
  }

  dimension: d_current_week {
    type: string
    sql: ${TABLE}.D_CURRENT_WEEK ;;
  }

  dimension: d_current_year {
    type: string
    sql: ${TABLE}.D_CURRENT_YEAR ;;
  }

  dimension_group: d {
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
    sql: ${TABLE}.D_DATE ;;
  }

  dimension: d_date_id {
    type: string
    sql: ${TABLE}.D_DATE_ID ;;
  }

  dimension: d_date_sk {
    type: number
    sql: ${TABLE}.D_DATE_SK ;;
  }

  dimension: d_day_name {
    type: string
    sql: ${TABLE}.D_DAY_NAME ;;
  }

  dimension: d_dom {
    type: number
    sql: ${TABLE}.D_DOM ;;
  }

  dimension: d_dow {
    type: number
    sql: ${TABLE}.D_DOW ;;
  }

  dimension: d_first_dom {
    type: number
    sql: ${TABLE}.D_FIRST_DOM ;;
  }

  dimension: d_following_holiday {
    type: string
    sql: ${TABLE}.D_FOLLOWING_HOLIDAY ;;
  }

  dimension: d_fy_quarter_seq {
    type: number
    sql: ${TABLE}.D_FY_QUARTER_SEQ ;;
  }

  dimension: d_fy_week_seq {
    type: number
    sql: ${TABLE}.D_FY_WEEK_SEQ ;;
  }

  dimension: d_fy_year {
    type: number
    sql: ${TABLE}.D_FY_YEAR ;;
  }

  dimension: d_holiday {
    type: string
    sql: ${TABLE}.D_HOLIDAY ;;
  }

  dimension: d_last_dom {
    type: number
    sql: ${TABLE}.D_LAST_DOM ;;
  }

  dimension: d_month_seq {
    type: number
    sql: ${TABLE}.D_MONTH_SEQ ;;
  }

  dimension: d_moy {
    type: number
    sql: ${TABLE}.D_MOY ;;
  }

  dimension: d_qoy {
    type: number
    sql: ${TABLE}.D_QOY ;;
  }

  dimension: d_quarter_name {
    type: string
    sql: ${TABLE}.D_QUARTER_NAME ;;
  }

  dimension: d_quarter_seq {
    type: number
    sql: ${TABLE}.D_QUARTER_SEQ ;;
  }

  dimension: d_same_day_lq {
    type: number
    sql: ${TABLE}.D_SAME_DAY_LQ ;;
  }

  dimension: d_same_day_ly {
    type: number
    sql: ${TABLE}.D_SAME_DAY_LY ;;
  }

  dimension: d_week_seq {
    type: number
    sql: ${TABLE}.D_WEEK_SEQ ;;
  }

  dimension: d_weekend {
    type: string
    sql: ${TABLE}.D_WEEKEND ;;
  }

  dimension: dyear {
    type: number
    sql: ${TABLE}.D_YEAR ;;
  }

  parameter: datefilter {
    type: date
  }
  #Custom Dimention
  dimension: selection {
    type: string
    sql: 'Customer Sales Details';;
  }
  measure: count {
    type: count
    drill_fields: [d_day_name, d_quarter_name]
  }
}
