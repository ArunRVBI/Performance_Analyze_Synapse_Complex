view: store_returns {
  sql_table_name: TPC_DS.STORE_RETURNS ;;

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

#custom dimention
  dimension: is_less30{
    type: yesno
    sql:
      ${date_dim.d_date} >= {% parameter date_dim.datefilter %}
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %} + 30 ;;
  }
  measure: 30Days {
    type:sum
    sql: ${sr_return_quantity} ;;
    filters: {
      field: is_less30
      value: "yes"
    }
  }

  dimension: is_less60{
    type: yesno
    sql:
      ${date_dim.d_date} >= {% parameter date_dim.datefilter %}
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %} + 60 ;;
  }
  measure: 60Days {
    type:sum
    sql: ${sr_return_quantity} ;;
    filters: {
      field: is_less60
      value: "yes"
    }
  }

  dimension: is_less90{
    type: yesno
    sql:
      ${date_dim.d_date} >= {% parameter date_dim.datefilter %}
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %} + 90 ;;
  }
  measure: 90Days {
    type:sum
    sql: ${sr_return_quantity} ;;
    filters: {
      field: is_less90
      value: "yes"
    }
  }

  dimension: is_above90{
    type: yesno
    sql:
      ${date_dim.d_date} >= {% parameter date_dim.datefilter %} + 91
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %} + 364 ;;
  }
  measure: after90Days {
    type:sum
    sql: ${sr_return_quantity} ;;
    filters: {
      field: is_above90
      value: "yes"
    }
  }


#For Charts
  dimension: is_mtd{
    type: yesno
    sql:
     ${date_dim.d_year} = year({% parameter date_dim.datefilter %})
      and
      substring(${date_dim.d_month},6,2) = month({% parameter date_dim.datefilter %})
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %}
      ;;
  }
  dimension: is_sply_mtd{
    type: yesno
    sql:
      ${date_dim.d_year} = year({% parameter date_dim.datefilter %})-1
      and
      substring(${date_dim.d_month},6,2) = month({% parameter date_dim.datefilter %})
      and
      ${date_dim.d_date} <= DATEADD(day,-365,{% parameter date_dim.datefilter %})
      ;;
  }
  dimension: dateflag{
    type: yesno
    sql:
      ( ${date_dim.d_year} = year({% parameter date_dim.datefilter %})
      and
      substring(${date_dim.d_month},6,2) = month({% parameter date_dim.datefilter %})
      and
      ${date_dim.d_date} <= {% parameter date_dim.datefilter %}
      )
      or
      ( ${date_dim.d_year} = year({% parameter date_dim.datefilter %})-1
      and
      substring(${date_dim.d_month},6,2) = month({% parameter date_dim.datefilter %})
      and
      ${date_dim.d_date} <= DATEADD(day,-365,{% parameter date_dim.datefilter %})
      )
      ;;
  }
  measure: currentyear_returnamt {
    type: sum
    sql:  ${TABLE}.SR_RETURN_AMT;;
    filters: [is_mtd: "yes"]
  }
  measure: previousyear_returnamt {
    type: sum
    sql:  ${TABLE}.SR_RETURN_AMT;;
    filters: [is_sply_mtd: "yes"]
  }
  measure: currentyear_returnshipcost {
    type: sum
    sql:  ${TABLE}.SR_RETURN_SHIP_COST;;
    filters: [is_mtd: "yes"]
  }
  measure: previousyear_returnshipcost {
    type: sum
    sql:  ${TABLE}.SR_RETURN_SHIP_COST;;
    filters: [is_sply_mtd: "yes"]
  }
  measure: filter_dateflag {
    type: sum
    sql:  1;;
    filters: [dateflag: "yes"]
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
