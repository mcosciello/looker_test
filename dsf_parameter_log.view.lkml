view: dsf_parameter_log {
  sql_table_name: dsf_metadata.dsf_parameter_log ;;

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

  dimension: variable_name {
    type: string
    sql: ${TABLE}.variable_name ;;
  }

  dimension: variable_type {
    type: string
    sql: ${TABLE}.variable_type ;;
  }

  dimension: variable_value {
    type: string
    sql: ${TABLE}.variable_value ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, variable_name]
  }
}
