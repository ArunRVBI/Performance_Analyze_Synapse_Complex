view: store_returns_bkp {
  sql_table_name: TPC_DS_DEV.STORE_RETURNS_BKP ;;

  dimension: sr_addr_sk {
    type: number
    sql: ${TABLE}.SR_ADDR_SK ;;
  }

  dimension: sr_cdemo_sk {
    type: number
    sql: ${TABLE}.SR_CDEMO_SK ;;
  }

  dimension: sr_customer_sk {
    type: number
    sql: ${TABLE}.SR_CUSTOMER_SK ;;
  }

  dimension: sr_fee {
    type: number
    sql: ${TABLE}.SR_FEE ;;
  }

  dimension: sr_hdemo_sk {
    type: number
    sql: ${TABLE}.SR_HDEMO_SK ;;
  }

  dimension: sr_item_sk {
    type: number
    sql: ${TABLE}.SR_ITEM_SK ;;
  }

  dimension: sr_net_loss {
    type: number
    sql: ${TABLE}.SR_NET_LOSS ;;
  }

  dimension: sr_reason_sk {
    type: number
    sql: ${TABLE}.SR_REASON_SK ;;
  }

  dimension: sr_refunded_cash {
    type: number
    sql: ${TABLE}.SR_REFUNDED_CASH ;;
  }

  dimension: sr_return_amt {
    type: number
    sql: ${TABLE}.SR_RETURN_AMT ;;
  }

  dimension: sr_return_amt_inc_tax {
    type: number
    sql: ${TABLE}.SR_RETURN_AMT_INC_TAX ;;
  }

  dimension: sr_return_quantity {
    type: number
    sql: ${TABLE}.SR_RETURN_QUANTITY ;;
  }

  dimension: sr_return_ship_cost {
    type: number
    sql: ${TABLE}.SR_RETURN_SHIP_COST ;;
  }

  dimension: sr_return_tax {
    type: number
    sql: ${TABLE}.SR_RETURN_TAX ;;
  }

  dimension: sr_return_time_sk {
    type: number
    sql: ${TABLE}.SR_RETURN_TIME_SK ;;
  }

  dimension: sr_returned_date_sk {
    type: number
    sql: ${TABLE}.SR_RETURNED_DATE_SK ;;
  }

  dimension: sr_reversed_charge {
    type: number
    sql: ${TABLE}.SR_REVERSED_CHARGE ;;
  }

  dimension: sr_store_credit {
    type: number
    sql: ${TABLE}.SR_STORE_CREDIT ;;
  }

  dimension: sr_store_sk {
    type: number
    sql: ${TABLE}.SR_STORE_SK ;;
  }

  dimension: sr_ticket_decimal {
    type: number
    sql: ${TABLE}.SR_TICKET_DECIMAL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
