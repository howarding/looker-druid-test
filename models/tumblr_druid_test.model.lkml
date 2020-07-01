connection: "tumblr-druid-testing"

# include all the views
include: "/views/**/*.view"

datagroup: tumblr_druid_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tumblr_druid_test_default_datagroup

# explore: ads_ad_events {}

# explore: ads_ad_events_ads_supply_server_events {}

# explore: ads_ad_requests {}

# explore: ads_ad_requests_ads_supply_server_events {}

# explore: ads_supply_events {}

# explore: ads_supply_events_ads_supply_server_events {}

# explore: crash_report {}

# explore: druid_metrics {}

# explore: interest_targeting {}

# explore: interest_targeting_ads_analytics {}

# explore: internal_blog_followers {}

# explore: leadership_dash_test {}

# explore: premium_partner_followers {}

explore: push_notification_evaluation {}

explore: recommend_chats_evaluation {}

explore: recommend_topics_evaluation {}

# explore: searchmetrics {}

# explore: stats_dashboard {}
