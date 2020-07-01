view: recommend_topics_evaluation {
  sql_table_name: druid.recommend_topics_evaluation ;;

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

  dimension: algorithm {
    type: string
    sql: ${TABLE}."algorithm" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: uniq_attributed_follow_searches {
    type: string
    sql: ${TABLE}."uniq_attributed_follow_searches" ;;
  }

  dimension: uniq_attributed_follow_searches_serve_ids {
    type: string
    sql: ${TABLE}."uniq_attributed_follow_searches_serve_ids" ;;
  }

  dimension: uniq_attributed_follow_searches_serve_sessions {
    type: string
    sql: ${TABLE}."uniq_attributed_follow_searches_serve_sessions" ;;
  }

  dimension: uniq_attributed_follow_searches_topics {
    type: string
    sql: ${TABLE}."uniq_attributed_follow_searches_topics" ;;
  }

  dimension: uniq_attributed_follow_searches_users {
    type: string
    sql: ${TABLE}."uniq_attributed_follow_searches_users" ;;
  }

  dimension: uniq_engaged_topics {
    type: string
    sql: ${TABLE}."uniq_engaged_topics" ;;
  }

  dimension: uniq_engaged_users {
    type: string
    sql: ${TABLE}."uniq_engaged_users" ;;
  }

  dimension: uniq_engagement_events {
    type: string
    sql: ${TABLE}."uniq_engagement_events" ;;
  }

  dimension: uniq_engagement_serve_ids {
    type: string
    sql: ${TABLE}."uniq_engagement_serve_ids" ;;
  }

  dimension: uniq_engagement_serve_sessions {
    type: string
    sql: ${TABLE}."uniq_engagement_serve_sessions" ;;
  }

  dimension: uniq_serve_events {
    type: string
    sql: ${TABLE}."uniq_serve_events" ;;
  }

  dimension: uniq_serve_stream_ids {
    type: string
    sql: ${TABLE}."uniq_serve_stream_ids" ;;
  }

  dimension: uniq_serve_user_sessions {
    type: string
    sql: ${TABLE}."uniq_serve_user_sessions" ;;
  }

  dimension: uniq_served_topics {
    type: string
    sql: ${TABLE}."uniq_served_topics" ;;
  }

  dimension: uniq_served_users {
    type: string
    sql: ${TABLE}."uniq_served_users" ;;
  }

  dimension: user_stratum {
    type: string
    sql: ${TABLE}."user_stratum" ;;
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
