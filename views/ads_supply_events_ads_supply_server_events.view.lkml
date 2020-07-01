view: ads_supply_events_ads_supply_server_events {
  sql_table_name: druid.ads_supply_events_ads_supply_server_events ;;

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

  dimension: mediation_candidate_considerations {
    type: number
    sql: ${TABLE}."mediation_candidate_considerations" ;;
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

  dimension: supply_opportunities {
    type: number
    sql: ${TABLE}."supply_opportunities" ;;
  }

  dimension: supply_opportunities_filled {
    type: number
    sql: ${TABLE}."supply_opportunities_filled" ;;
  }

  dimension: supply_opportunities_missed {
    type: number
    sql: ${TABLE}."supply_opportunities_missed" ;;
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
