view: internal_blog_followers {
  sql_table_name: druid.internal_blog_followers ;;

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

#   dimension: count {
#     type: number
#     sql: ${TABLE}."count" ;;
#   }

  dimension: to_id {
    type: string
    sql: ${TABLE}."to_id" ;;
  }

  dimension: to_name {
    type: string
    sql: ${TABLE}."to_name" ;;
  }

  dimension: to_team {
    type: string
    sql: ${TABLE}."to_team" ;;
  }

  measure: count {
    type: count
    drill_fields: [to_name]
  }
}
