view: ads_ad_requests_ads_supply_server_events {
  sql_table_name: druid.ads_ad_requests_ads_supply_server_events ;;

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

  dimension: ad_provider_foreign_placement_id {
    type: string
    sql: ${TABLE}."ad_provider_foreign_placement_id" ;;
  }

  dimension: ad_provider_id {
    type: string
    sql: ${TABLE}."ad_provider_id" ;;
  }

  dimension: ad_provider_placement_id {
    type: string
    sql: ${TABLE}."ad_provider_placement_id" ;;
  }

  dimension: ad_requests {
    type: number
    sql: ${TABLE}."ad_requests" ;;
  }

  dimension: ads_requested {
    type: number
    sql: ${TABLE}."ads_requested" ;;
  }

  dimension: ads_returned {
    type: number
    sql: ${TABLE}."ads_returned" ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}."browser_name" ;;
  }

  dimension: build_version {
    type: string
    sql: ${TABLE}."build_version" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}."os_name" ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}."os_version" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  measure: count {
    type: count
    drill_fields: [browser_name, os_name]
  }
}
