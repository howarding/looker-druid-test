view: searchmetrics {
  sql_table_name: druid."search-metrics" ;;

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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: engagement_count {
    type: number
    sql: ${TABLE}."engagement_count" ;;
  }

  dimension: engagement_sum {
    type: number
    sql: ${TABLE}."engagement_sum" ;;
  }

  dimension: fetch_count_count {
    type: number
    sql: ${TABLE}."fetch_count_count" ;;
  }

  dimension: fetch_count_histogram {
    type: string
    sql: ${TABLE}."fetch_count_histogram" ;;
  }

  dimension: fetch_count_sum {
    type: number
    sql: ${TABLE}."fetch_count_sum" ;;
  }

  dimension: filter_ratio_count {
    type: number
    sql: ${TABLE}."filter_ratio_count" ;;
  }

  dimension: filter_ratio_histogram {
    type: string
    sql: ${TABLE}."filter_ratio_histogram" ;;
  }

  dimension: filter_ratio_sum {
    type: number
    sql: ${TABLE}."filter_ratio_sum" ;;
  }

  dimension: impression_count {
    type: number
    sql: ${TABLE}."impression_count" ;;
  }

  dimension: impression_sum {
    type: number
    sql: ${TABLE}."impression_sum" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: pop_rank_of_day_count {
    type: number
    sql: ${TABLE}."pop_rank_of_day_count" ;;
  }

  dimension: pop_rank_of_day_sum {
    type: number
    sql: ${TABLE}."pop_rank_of_day_sum" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}."query" ;;
  }

  dimension: recency_count {
    type: number
    sql: ${TABLE}."recency_count" ;;
  }

  dimension: recency_histogram {
    type: string
    sql: ${TABLE}."recency_histogram" ;;
  }

  dimension: recency_sum {
    type: number
    sql: ${TABLE}."recency_sum" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: result_count_count {
    type: number
    sql: ${TABLE}."result_count_count" ;;
  }

  dimension: result_count_histogram {
    type: string
    sql: ${TABLE}."result_count_histogram" ;;
  }

  dimension: result_count_sum {
    type: number
    sql: ${TABLE}."result_count_sum" ;;
  }

  dimension: serve_count {
    type: number
    sql: ${TABLE}."serve_count" ;;
  }

  dimension: serve_sum {
    type: number
    sql: ${TABLE}."serve_sum" ;;
  }

  dimension: session_count_count {
    type: number
    sql: ${TABLE}."session_count_count" ;;
  }

  dimension: session_count_sum {
    type: number
    sql: ${TABLE}."session_count_sum" ;;
  }

  dimension: unique_queries {
    type: string
    sql: ${TABLE}."unique_queries" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
