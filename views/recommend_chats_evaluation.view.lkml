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

  dimension: device {
    type: string
    sql: ${TABLE}."device" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

#   dimension: serves {
#     type: number
#     sql: ${TABLE}."serves" ;;
#   }
#
#   dimension: impressions {
#     type: number
#     sql: ${TABLE}."impressions" ;;
#   }
#
#   dimension: clicks {
#     type: number
#     sql: ${TABLE}."clicks" ;;
#   }
#
#   dimension: requests_to_join {
#     type: number
#     sql: ${TABLE}."requests_to_join" ;;
#   }


#   dimension: uniq_chat_served {
#     type: string
#     sql: ${TABLE}."uniq_chat_served" ;;
#   }
#
#   dimension: uniq_chat_impressed {
#     type: string
#     sql: ${TABLE}."uniq_chat_impressed" ;;
#   }
#
#   dimension: uniq_chat_clicked {
#     type: string
#     sql: ${TABLE}."uniq_chat_clicked" ;;
#   }
#
#   dimension: uniq_chat_rtj {
#     type: string
#     sql: ${TABLE}."uniq_chat_rtj" ;;
#   }
#
#   dimension: uniq_user_served {
#     type: string
#     sql: ${TABLE}."uniq_user_served" ;;
#   }
#
#   dimension: uniq_user_clicked {
#     type: string
#     sql: ${TABLE}."uniq_user_clicked" ;;
#   }
#
#   dimension: uniq_user_impressed {
#     type: string
#     sql: ${TABLE}."uniq_user_impressed" ;;
#   }
#
#   dimension: uniq_user_rtj {
#     type: string
#     sql: ${TABLE}."uniq_user_rtj" ;;
#   }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Serves {
    type: sum
    sql: ${TABLE}."serves" ;;
    value_format: "#,##0"
  }

  measure: Clicks {
    type: sum
    sql: ${TABLE}."clicks" ;;
    value_format: "#,##0"
  }

  measure: Impressions {
    type: sum
    sql: ${TABLE}."impressions" ;;
    value_format: "#,##0"
  }

  measure: Requests_to_join {
    type: sum
    sql: ${TABLE}."requests_to_join" ;;
    value_format: "#,##0"
  }

  measure: uniq_user_served {
    type: count_distinct
    sql: ${TABLE}."uniq_user_served" ;;
  }

  measure: uniq_user_impressed {
    type: count_distinct
    sql: ${TABLE}."uniq_user_impressed" ;;
  }

  measure: uniq_user_clicked {
    type: count_distinct
    sql: ${TABLE}."uniq_user_clicked" ;;
  }

  measure: uniq_user_rtj {
    type: count_distinct
    sql: ${TABLE}."uniq_user_rtj" ;;
  }

  measure: uniq_chat_served {
    type: count_distinct
    sql: ${TABLE}."uniq_chat_served" ;;
  }

  measure: uniq_chat_impressed {
    type: count_distinct
    sql: ${TABLE}."uniq_chat_impressed" ;;
  }

  measure: uniq_chat_clicked {
    type: count_distinct
    sql: ${TABLE}."uniq_chat_clicked" ;;
  }

  measure: uniq_chat_rtj {
    type: count_distinct
    sql: ${TABLE}."uniq_chat_rtj" ;;
  }

}
