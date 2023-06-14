

# Blank lines are intentional
project_name: "sisu-insights"
application: sisu-insights {
  label: "Sisu Insights"
  sri_hash: "heD7Bx/AWiVM756xpwzQB+i61tn7b+fdjnEmydxyniX8FqK7gVTuC6PicEpklRfx"
  file: "Looker.js"
  
  entitlements: {
    use_embeds: yes
    use_form_submit: yes
    external_api_urls : ["https://api.segment.io", "https://app.sisu.ai", "https://cdn.segment.com", "https://edge.fullstory.com", "https://rs.fullstory.com", "https://sentry.io"]
    core_api_methods: ["me", "all_connections", "all_looks", "create_query", "user_attribute", "dashboard", "lookml_model_explore", "query_for_slug", "query", "run_inline_query", "run_look", "run_query", "search_folders", "model_fieldname_suggestions", "connection", "all_user_attributes", "user_attribute_user_values", "all_oauth_client_apps", "oauth2Authenticate", "oauth_client_app", "register_oauth_client_app", "activate_app_user", "get_setting", "dashboard_element", "search_dashboards", "create_query_task", "query_task", "query_task_results", "query_task_multi_results", "kill_query", "role"]
    new_window : yes
    new_window_external_urls: [ "https://app.sisu.ai/*", "mailto:support@sisudata.com", "https://docs.sisudata.com/docs/*"]
    oauth2_urls: ["https://app.sisu.ai/oauth/authorize"]
  }
  mount_points: {
    standalone: yes
    dashboard_tile_popup: yes
  }
}

constant: CONNECTION_NAME {
  value: ""
  export: override_optional
}

# rc-2023-06-13.78f758d
# 1.1.22
