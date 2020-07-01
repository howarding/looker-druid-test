view: ads_ad_events_ads_supply_server_events {
  sql_table_name: druid.ads_ad_events_ads_supply_server_events ;;

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

  dimension: ads_dropped {
    type: number
    sql: ${TABLE}."ads_dropped" ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}."browser_name" ;;
  }

  dimension: build_version {
    type: string
    sql: ${TABLE}."build_version" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
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

  dimension: follows {
    type: number
    sql: ${TABLE}."follows" ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}."impressions" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}."likes" ;;
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

  dimension: reblogs {
    type: number
    sql: ${TABLE}."reblogs" ;;
  }

  dimension: supply_opportunities_filled {
    type: number
    sql: ${TABLE}."supply_opportunities_filled" ;;
  }

  dimension: supply_provider_id {
    type: string
    sql: ${TABLE}."supply_provider_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [browser_name, os_name]
  }
}
