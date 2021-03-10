resource "mongodbatlas_alert_configuration" "HOST_DOWN" {
  count      = var.ENABLE_ALARM_HOST_DOWN ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "HOST_DOWN"
  enabled    = true

  notification {
    type_name     = var.HOST_DOWN.NOTIFICATION
    interval_min  = var.HOST_DOWN.INTERVAL_MIN
    delay_min     = var.HOST_DOWN.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }
}

resource "mongodbatlas_alert_configuration" "HOST_HAS_INDEX_SUGGESTIONS" {
  count      = var.ENABLE_ALARM_HOST_HAS_INDEX_SUGGESTIONS ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "HOST_HAS_INDEX_SUGGESTIONS"
  enabled    = true

  notification {
    type_name     = var.HOST_HAS_INDEX_SUGGESTIONS.NOTIFICATION
    interval_min  = var.HOST_HAS_INDEX_SUGGESTIONS.INTERVAL_MIN
    delay_min     = var.HOST_HAS_INDEX_SUGGESTIONS.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }
}

resource "mongodbatlas_alert_configuration" "NORMALIZED_SYSTEM_CPU_USER" {
  count      = var.ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_USER ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NORMALIZED_SYSTEM_CPU_USER.NOTIFICATION
    interval_min  = var.NORMALIZED_SYSTEM_CPU_USER.INTERVAL_MIN
    delay_min     = var.NORMALIZED_SYSTEM_CPU_USER.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_USER"
    operator    = var.NORMALIZED_SYSTEM_CPU_USER.OPERATOR
    threshold   = var.NORMALIZED_SYSTEM_CPU_USER.THRESHOLD
    units       = var.NORMALIZED_SYSTEM_CPU_USER.UNITS
    mode        = var.NORMALIZED_SYSTEM_CPU_USER.MODE
  }
}

resource "mongodbatlas_alert_configuration" "NORMALIZED_SYSTEM_CPU_STEAL_90" {
  count      = var.ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_90 ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NORMALIZED_SYSTEM_CPU_STEAL_90.NOTIFICATION
    interval_min  = var.NORMALIZED_SYSTEM_CPU_STEAL_90.INTERVAL_MIN
    delay_min     = var.NORMALIZED_SYSTEM_CPU_STEAL_90.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_STEAL"
    operator    = var.NORMALIZED_SYSTEM_CPU_STEAL_90.OPERATOR
    threshold   = var.NORMALIZED_SYSTEM_CPU_STEAL_90.THRESHOLD
    units       = var.NORMALIZED_SYSTEM_CPU_STEAL_90.UNITS
    mode        = var.NORMALIZED_SYSTEM_CPU_STEAL_90.MODE
  }
}

resource "mongodbatlas_alert_configuration" "NORMALIZED_SYSTEM_CPU_STEAL_60" {
  count      = var.ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_60 ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NORMALIZED_SYSTEM_CPU_STEAL_60.NOTIFICATION
    interval_min  = var.NORMALIZED_SYSTEM_CPU_STEAL_60.INTERVAL_MIN
    delay_min     = var.NORMALIZED_SYSTEM_CPU_STEAL_60.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_STEAL"
    operator    = var.NORMALIZED_SYSTEM_CPU_STEAL_60.OPERATOR
    threshold   = var.NORMALIZED_SYSTEM_CPU_STEAL_60.THRESHOLD 
    units       = var.NORMALIZED_SYSTEM_CPU_STEAL_60.UNITS
    mode        = var.NORMALIZED_SYSTEM_CPU_STEAL_60.MODE
  }
}

resource "mongodbatlas_alert_configuration" "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  count      = var.ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.NOTIFICATION
    interval_min  = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.INTERVAL_MIN
    delay_min     = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED"
    operator    = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.OPERATOR
    threshold   = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.THRESHOLD 
    units       = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.UNITS
    mode        = var.QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED.MODE
  }
}

resource "mongodbatlas_alert_configuration" "DISK_PARTITION_SPACE_USED_DATA" {
  count      = var.ENABLE_ALARM_DISK_PARTITION_SPACE_USED_DATA ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.DISK_PARTITION_SPACE_USED_DATA.NOTIFICATION
    interval_min  = var.DISK_PARTITION_SPACE_USED_DATA.INTERVAL_MIN
    delay_min     = var.DISK_PARTITION_SPACE_USED_DATA.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "DISK_PARTITION_SPACE_USED_DATA"
    operator    = var.DISK_PARTITION_SPACE_USED_DATA.OPERATOR
    threshold   = var.DISK_PARTITION_SPACE_USED_DATA.THRESHOLD
    units       = var.DISK_PARTITION_SPACE_USED_DATA.UNITS
    mode        = var.DISK_PARTITION_SPACE_USED_DATA.MODE
  }
}

resource "mongodbatlas_alert_configuration" "DISK_PARTITION_UTILIZATION_DATA" {
  count      = var.ENABLE_ALARM_DISK_PARTITION_UTILIZATION_DATA ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.DISK_PARTITION_UTILIZATION_DATA.NOTIFICATION
    interval_min  = var.DISK_PARTITION_UTILIZATION_DATA.INTERVAL_MIN
    delay_min     = var.DISK_PARTITION_UTILIZATION_DATA.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "DISK_PARTITION_UTILIZATION_DATA"
    operator    = var.DISK_PARTITION_UTILIZATION_DATA.OPERATOR
    threshold   = var.DISK_PARTITION_UTILIZATION_DATA.THRESHOLD
    units       = var.DISK_PARTITION_UTILIZATION_DATA.UNITS
    mode        = var.DISK_PARTITION_UTILIZATION_DATA.MODE
  }
}

resource "mongodbatlas_alert_configuration" "REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  count      = var.ENABLE_ALARM_REPLICATION_OPLOG_WINDOW_RUNNING_OUT ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "REPLICATION_OPLOG_WINDOW_RUNNING_OUT"
  enabled    = true

  notification {
    type_name     = var.REPLICATION_OPLOG_WINDOW_RUNNING_OUT.NOTIFICATION
    interval_min  = var.REPLICATION_OPLOG_WINDOW_RUNNING_OUT.INTERVAL_MIN
    delay_min     = var.REPLICATION_OPLOG_WINDOW_RUNNING_OUT.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  threshold = {
    operator  = "LESS_THAN"
    threshold = var.REPLICATION_OPLOG_WINDOW_RUNNING_OUT.THRESHOLD
    units     = var.REPLICATION_OPLOG_WINDOW_RUNNING_OUT.UNITS
  }
}

resource "mongodbatlas_alert_configuration" "CONNECTIONS_PERCENT" {
  count      = var.ENABLE_ALARM_CONNECTIONS_PERCENT ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.CONNECTIONS_PERCENT.NOTIFICATION
    interval_min  = var.CONNECTIONS_PERCENT.INTERVAL_MIN
    delay_min     = var.CONNECTIONS_PERCENT.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "CONNECTIONS_PERCENT"
    operator    = var.CONNECTIONS_PERCENT.OPERATOR
    threshold   = var.CONNECTIONS_PERCENT.THRESHOLD
    units       = var.CONNECTIONS_PERCENT.UNITS
    mode        = var.CONNECTIONS_PERCENT.MODE
  }
}

resource "mongodbatlas_alert_configuration" "CREDIT_CARD_ABOUT_TO_EXPIRE" {
  count      = var.ENABLE_ALARM_CREDIT_CARD_ABOUT_TO_EXPIRE ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "CREDIT_CARD_ABOUT_TO_EXPIRE"
  enabled    = true

  notification {
    type_name     = var.CREDIT_CARD_ABOUT_TO_EXPIRE.NOTIFICATION
    interval_min  = var.CREDIT_CARD_ABOUT_TO_EXPIRE.INTERVAL_MIN
    delay_min     = var.CREDIT_CARD_ABOUT_TO_EXPIRE.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }
}

resource "mongodbatlas_alert_configuration" "NO_PRIMARY" {
  count      = var.ENABLE_ALARM_NO_PRIMARY ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "NO_PRIMARY"
  enabled    = true

  notification {
    type_name     = var.NO_PRIMARY.NOTIFICATION
    interval_min  = var.NO_PRIMARY.INTERVAL_MIN
    delay_min     = var.NO_PRIMARY.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }
}

resource "mongodbatlas_alert_configuration" "CLUSTER_MONGOS_IS_MISSING" {
  count      = var.ENABLE_ALARM_CLUSTER_MONGOS_IS_MISSING ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "CLUSTER_MONGOS_IS_MISSING"
  enabled    = true

  notification {
    type_name     = var.CLUSTER_MONGOS_IS_MISSING.NOTIFICATION
    interval_min  = var.CLUSTER_MONGOS_IS_MISSING.INTERVAL_MIN
    delay_min     = var.CLUSTER_MONGOS_IS_MISSING.DELAY_MIN
    sms_enabled   = false
    email_enabled = false
  }
}
