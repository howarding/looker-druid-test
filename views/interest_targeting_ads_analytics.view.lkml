view: interest_targeting_ads_analytics {
  sql_table_name: druid.interest_targeting_ads_analytics ;;

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

  dimension: context {
    type: string
    sql: ${TABLE}."context" ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}."geo" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: supply_provider {
    type: string
    sql: ${TABLE}."supply_provider" ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}."topic" ;;
  }

  dimension: unique_supply_opportunities {
    type: string
    sql: ${TABLE}."unique_supply_opportunities" ;;
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
