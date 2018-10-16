view: listener_logs {
  sql_table_name: dsf_metadata.listener_logs ;;

  dimension: datasetversionkey {
    type: number
    sql: ${TABLE}.datasetversionkey ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}.env ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: log_id {
    type: number
    sql: ${TABLE}.log_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subflow_id {
    type: string
    sql: ${TABLE}.subflow_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
