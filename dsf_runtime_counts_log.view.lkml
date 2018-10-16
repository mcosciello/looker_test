view: dsf_runtime_counts_log {
  sql_table_name: dsf_metadata.dsf_runtime_counts_log ;;

  dimension: alpine_workflow_id {
    type: number
    sql: ${TABLE}.alpine_workflow_id ;;
  }

  dimension: count_type {
    type: string
    sql: ${TABLE}.count_type ;;
  }

  dimension: fulfillment_request_nr {
    type: string
    sql: ${TABLE}.fulfillment_request_nr ;;
  }

  dimension_group: insertdt {
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
    sql: ${TABLE}.insertdt ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_runtime_id {
    type: string
    sql: ${TABLE}.job_runtime_id ;;
  }

  dimension: record_count {
    type: number
    sql: ${TABLE}.record_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
