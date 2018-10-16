connection: "mlsroyalty-prod"

# include all the views
include: "*.view"

# datagroup: dsf_pipeline_monitors_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: dsf_pipeline_monitors_default_datagroup

explore: data_entitlements {}
explore: dsf_incremental_log {}
explore: dsf_parameter_log {}
explore: dsf_runtime_counts_log {}
explore: dsf_runtime_log {}
explore: listener_logs {}
explore: dsf_metadata__listener_logs {}
