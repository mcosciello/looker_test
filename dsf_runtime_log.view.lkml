view: dsf_runtime_log {
  sql_table_name: dsf_metadata.dsf_runtime_log ;;

  dimension: alpine_user_id {
    type: number
    sql: ${TABLE}.alpine_user_id ;;
  }

  dimension: alpine_workflow {
    type: string
    sql: ${TABLE}.alpine_workflow ;;
  }

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

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: error_codes {
    type: string
    sql: ${TABLE}.error_codes ;;
  }

  dimension: fa_analyst {
    type: string
    sql: ${TABLE}.fa_analyst ;;
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

  dimension: sql_statement {
    type: string
    sql: ${TABLE}.sql_statement ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: tsds_user_name {
    type: string
    sql: ${TABLE}.tsds_user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [tsds_user_name, customer_name]
  }
}
