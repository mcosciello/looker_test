view: dsf_incremental_log {
  sql_table_name: dsf_metadata.dsf_incremental_log ;;

  dimension: alpine_workflow_id {
    type: number
    sql: ${TABLE}.alpine_workflow_id ;;
  }

  dimension: customer_bu {
    type: string
    sql: ${TABLE}.customer_bu ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: data_groupings_table {
    type: string
    sql: ${TABLE}.data_groupings_table ;;
  }

  dimension: data_groupings_table_version {
    type: string
    sql: ${TABLE}.data_groupings_table_version ;;
  }

  dimension: fulfillment_request_nr {
    type: string
    sql: ${TABLE}.fulfillment_request_nr ;;
  }

  dimension: incremental_id {
    type: number
    sql: ${TABLE}.incremental_id ;;
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

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
