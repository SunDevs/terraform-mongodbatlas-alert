locals {
  default_state = true
  notification  = "WEBHOOK"
}
variable "PROJECT_ID" {
  type = string
}

variable "NOTIFICATION" {
  type    = string
  default = "WEBHOOK"
}

variable "ENABLE_ALARM_HOST_DOWN" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_HOST_HAS_INDEX_SUGGESTIONS" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_USER" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_90" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_60" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_DISK_PARTITION_SPACE_USED_DATA" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_DISK_PARTITION_UTILIZATION_DATA" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_CONNECTIONS_PERCENT" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_CREDIT_CARD_ABOUT_TO_EXPIRE" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_NO_PRIMARY" {
  type    = bool
  default = true
}

variable "ENABLE_ALARM_CLUSTER_MONGOS_IS_MISSING" {
  type    = bool
  default = true
}

