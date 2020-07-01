view: premium_partner_followers {
  sql_table_name: druid.premium_partner_followers ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}
