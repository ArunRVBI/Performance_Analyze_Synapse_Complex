view: item_join_path {
  derived_table: {
    sql:SELECT 'store_sales' as path
        UNION ALL
        SELECT 'web_sales' as path ;;
  }

  dimension: path {
    type: string
  }
}
