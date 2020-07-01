view: interest_targeting {
  sql_table_name: druid.interest_targeting ;;

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

  dimension: geo {
    type: string
    sql: ${TABLE}."geo" ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}."topic" ;;
  }

  dimension: unique_users {
    type: string
    sql: ${TABLE}."unique_users" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
