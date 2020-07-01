view: leadership_dash_test {
  sql_table_name: druid.leadership_dash_test ;;

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

  dimension: clicks {
    type: number
    sql: ${TABLE}."clicks" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."Domain" ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}."impressions" ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}."placementID" ;;
  }

  dimension: placement_name {
    type: string
    sql: ${TABLE}."placementName" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }

  measure: count {
    type: count
    drill_fields: [placement_name]
  }
}
