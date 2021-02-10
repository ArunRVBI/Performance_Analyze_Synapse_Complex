view: time_dim {
  sql_table_name: TPC_DS_DEV.TIME_DIM ;;

  dimension: t_am_pm {
    type: string
    sql: ${TABLE}.T_AM_PM ;;
  }

  dimension: t_hour {
    type: number
    sql: ${TABLE}.T_HOUR ;;
  }

  dimension: t_meal_time {
    type: string
    sql: ${TABLE}.T_MEAL_TIME ;;
  }

  dimension: t_minute {
    type: number
    sql: ${TABLE}.T_MINUTE ;;
  }

  dimension: t_second {
    type: number
    sql: ${TABLE}.T_SECOND ;;
  }

  dimension: t_shift {
    type: string
    sql: ${TABLE}.T_SHIFT ;;
  }

  dimension: t_sub_shift {
    type: string
    sql: ${TABLE}.T_SUB_SHIFT ;;
  }

  dimension: t_time {
    type: number
    sql: ${TABLE}.T_TIME ;;
  }

  dimension: t_time_id {
    type: string
    sql: ${TABLE}.T_TIME_ID ;;
  }

  dimension: t_time_sk {
    type: number
    sql: ${TABLE}.T_TIME_SK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
