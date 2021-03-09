resource "mongodbatlas_alert_configuration" "HOST_DOWN" {
  count      = var.ENABLE_ALARM_HOST_DOWN ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "HOST_DOWN"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 5
    delay_min     = 0
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
    type_name     = var.NOTIFICATION
    interval_min  = 5
    delay_min     = 0
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
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_USER"
    operator    = "GREATER_THAN"
    threshold   = 90
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "NORMALIZED_SYSTEM_CPU_STEAL_90" {
  count      = var.ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_90 ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_STEAL"
    operator    = "GREATER_THAN"
    threshold   = 50
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "NORMALIZED_SYSTEM_CPU_STEAL_60" {
  count      = var.ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_60 ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "NORMALIZED_SYSTEM_CPU_STEAL"
    operator    = "GREATER_THAN"
    threshold   = 50
    units       = "RAW"
    mode        = "AVERAGE"
  }
}


resource "mongodbatlas_alert_configuration" "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  count      = var.ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED"
    operator    = "GREATER_THAN"
    threshold   = 1000
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "DISK_PARTITION_SPACE_USED_DATA" {
  count      = var.ENABLE_ALARM_DISK_PARTITION_SPACE_USED_DATA ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "DISK_PARTITION_SPACE_USED_DATA"
    operator    = "GREATER_THAN"
    threshold   = 90
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "DISK_PARTITION_UTILIZATION_DATA" {
  count      = var.ENABLE_ALARM_DISK_PARTITION_UTILIZATION_DATA ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "DISK_PARTITION_UTILIZATION_DATA"
    operator    = "GREATER_THAN"
    threshold   = 90
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  count      = var.ENABLE_ALARM_REPLICATION_OPLOG_WINDOW_RUNNING_OUT ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "REPLICATION_OPLOG_WINDOW_RUNNING_OUT"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  threshold = {
    operator  = "LESS_THAN"
    threshold = 1
    units     = "HOURS"
  }
}

resource "mongodbatlas_alert_configuration" "CONNECTIONS_PERCENT" {
  count      = var.ENABLE_ALARM_CONNECTIONS_PERCENT ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 0
    sms_enabled   = false
    email_enabled = false
  }

  metric_threshold = {
    metric_name = "CONNECTIONS_PERCENT"
    operator    = "GREATER_THAN"
    threshold   = 80
    units       = "RAW"
    mode        = "AVERAGE"
  }
}

resource "mongodbatlas_alert_configuration" "CREDIT_CARD_ABOUT_TO_EXPIRE" {
  count      = var.ENABLE_ALARM_CREDIT_CARD_ABOUT_TO_EXPIRE ? 1 : 0
  project_id = var.PROJECT_ID
  event_type = "CREDIT_CARD_ABOUT_TO_EXPIRE"
  enabled    = true

  notification {
    type_name     = var.NOTIFICATION
    interval_min  = 5
    delay_min     = 0
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
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 15
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
    type_name     = var.NOTIFICATION
    interval_min  = 60
    delay_min     = 15
    sms_enabled   = false
    email_enabled = false
  }
}
