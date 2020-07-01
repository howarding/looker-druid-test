view: recommend_chats_evaluation {
  sql_table_name: druid.recommend_chats_evaluation ;;

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

  dimension: bucket {
    type: string
    sql: ${TABLE}."bucket" ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}."clicks" ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}."device" ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}."impressions" ;;
  }

  dimension: requests_to_join {
    type: number
    sql: ${TABLE}."requests_to_join" ;;
  }

  dimension: serves {
    type: number
    sql: ${TABLE}."serves" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: uniq_chat_clicked {
    type: string
    sql: ${TABLE}."uniq_chat_clicked" ;;
  }

  dimension: uniq_chat_impressed {
    type: string
    sql: ${TABLE}."uniq_chat_impressed" ;;
  }

  dimension: uniq_chat_rtj {
    type: string
    sql: ${TABLE}."uniq_chat_rtj" ;;
  }

  dimension: uniq_chat_served {
    type: string
    sql: ${TABLE}."uniq_chat_served" ;;
  }

  dimension: uniq_user_clicked {
    type: string
    sql: ${TABLE}."uniq_user_clicked" ;;
  }

  dimension: uniq_user_impressed {
    type: string
    sql: ${TABLE}."uniq_user_impressed" ;;
  }

  dimension: uniq_user_rtj {
    type: string
    sql: ${TABLE}."uniq_user_rtj" ;;
  }

  dimension: uniq_user_served {
    type: string
    sql: ${TABLE}."uniq_user_served" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Serves {
    type: sum

  }
}
