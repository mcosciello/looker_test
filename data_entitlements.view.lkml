view: data_entitlements {
  sql_table_name: dsf_metadata.data_entitlements ;;

  dimension: cntycd {
    type: string
    sql: ${TABLE}.cntycd ;;
  }

  dimension: cntyname {
    type: string
    sql: ${TABLE}.cntyname ;;
  }

  dimension: statecd {
    type: string
    sql: ${TABLE}.statecd ;;
  }

  dimension: statenbrcd {
    type: string
    sql: ${TABLE}.statenbrcd ;;
  }

  measure: count {
    type: count
    drill_fields: [cntyname]
  }
}
