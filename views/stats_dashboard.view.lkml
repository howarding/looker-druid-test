view: stats_dashboard {
  sql_table_name: druid.stats_dashboard ;;

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

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}."datatype" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
