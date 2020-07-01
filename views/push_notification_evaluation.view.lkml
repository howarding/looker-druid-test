view: push_notification_evaluation {
  sql_table_name: druid.push_notification_evaluation ;;

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

  dimension: device {
    type: string
    sql: ${TABLE}."device" ;;
  }

  dimension: launches {
    type: number
    sql: ${TABLE}."launches" ;;
  }

  dimension: metric_type {
    type: string
    sql: ${TABLE}."metric_type" ;;
  }

  dimension: notification_type {
    type: string
    sql: ${TABLE}."notification_type" ;;
  }

  dimension: pushes {
    type: number
    sql: ${TABLE}."pushes" ;;
  }

  dimension: turnoffs {
    type: number
    sql: ${TABLE}."turnoffs" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
