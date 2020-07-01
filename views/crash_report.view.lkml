view: crash_report {
  sql_table_name: druid.crash_report ;;

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

  dimension: build_version {
    type: string
    sql: ${TABLE}."build_version" ;;
  }

#   dimension: count {
#     type: number
#     sql: ${TABLE}."count" ;;
#   }

  dimension: exception_class {
    type: string
    sql: ${TABLE}."exception_class" ;;
  }

  dimension: exception_file {
    type: string
    sql: ${TABLE}."exception_file" ;;
  }

  dimension: exception_type {
    type: string
    sql: ${TABLE}."exception_type" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}."os_version" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: report_type {
    type: string
    sql: ${TABLE}."report_type" ;;
  }

  dimension: user_unique {
    type: string
    sql: ${TABLE}."user_unique" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
