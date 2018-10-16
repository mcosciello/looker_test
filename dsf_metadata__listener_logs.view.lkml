view: dsf_metadata__listener_logs {
  derived_table: {
    sql: select * from dsf_metadata.listener_logs where event_timestamp>= now() - interval '2 day' ORDER BY event_timestamp DESC
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: log_id {
    type: string
    sql: ${TABLE}.log_id ;;
  }

  dimension: datasetversionkey {
    type: number
    sql: ${TABLE}.datasetversionkey ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}.env ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: subflow_id {
    type: string
    sql: ${TABLE}.subflow_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension_group: event_timestamp {
    type: time
    sql: ${TABLE}.event_timestamp ;;
  }

  set: detail {
    fields: [
      log_id,
      datasetversionkey,
      env,
      flow_id,
      subflow_id,
      status,
      error_msg,
      event_timestamp_time
    ]
  }
}
