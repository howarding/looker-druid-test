view: druid_metrics {
  sql_table_name: druid.druid_metrics ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension_group: _ {
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
    sql: ${TABLE}."__time" ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}."author" ;;
  }

  dimension: bufferpool_name {
    type: string
    sql: ${TABLE}."bufferpoolName" ;;
  }

  dimension: cluster_name {
    type: string
    sql: ${TABLE}."clusterName" ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

#   dimension: count {
#     type: number
#     sql: ${TABLE}."count" ;;
#   }

  dimension: data_source {
    type: string
    sql: ${TABLE}."dataSource" ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}."dimension" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."duration" ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}."error" ;;
  }

  dimension: feed {
    type: string
    sql: ${TABLE}."feed" ;;
  }

  dimension: gc_gen {
    type: string
    sql: ${TABLE}."gcGen" ;;
  }

  dimension: gc_gen_space_name {
    type: string
    sql: ${TABLE}."gcGenSpaceName" ;;
  }

  dimension: gc_name {
    type: string
    sql: ${TABLE}."gcName" ;;
  }

  dimension: graceful {
    type: string
    sql: ${TABLE}."graceful" ;;
  }

  dimension: has_filters {
    type: string
    sql: ${TABLE}."hasFilters" ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}."host" ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}."interval" ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."key" ;;
  }

  dimension: mem_kind {
    type: string
    sql: ${TABLE}."memKind" ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}."metric" ;;
  }

  dimension: num_complex_metrics {
    type: string
    sql: ${TABLE}."numComplexMetrics" ;;
  }

  dimension: num_dimensions {
    type: string
    sql: ${TABLE}."numDimensions" ;;
  }

  dimension: num_metrics {
    type: string
    sql: ${TABLE}."numMetrics" ;;
  }

  dimension: pool_kind {
    type: string
    sql: ${TABLE}."poolKind" ;;
  }

  dimension: pool_name {
    type: string
    sql: ${TABLE}."poolName" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."priority" ;;
  }

  dimension: remote_address {
    type: string
    sql: ${TABLE}."remoteAddress" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}."server" ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}."service" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: success {
    type: string
    sql: ${TABLE}."success" ;;
  }

  dimension: task {
    type: string
    sql: ${TABLE}."task" ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}."taskId" ;;
  }

  dimension: task_status {
    type: string
    sql: ${TABLE}."taskStatus" ;;
  }

  dimension: task_type {
    type: string
    sql: ${TABLE}."taskType" ;;
  }

  dimension: threshold {
    type: string
    sql: ${TABLE}."threshold" ;;
  }

  dimension: tier {
    type: string
    sql: ${TABLE}."tier" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."value" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      bufferpool_name,
      cluster_name,
      gc_gen_space_name,
      gc_name,
      pool_name
    ]
  }
}
