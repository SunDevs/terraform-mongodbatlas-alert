variable "PROJECT_ID" {
  type        = string
  description = "The Project ID displayed at the top of the page is used by the Atlas API ."
}

variable "MONGODB_ATLAS_PUBLIC_KEY" {
  type        = string
  description = "The public key acts as the username when making API requests"
}

variable "MONGODB_ATLAS_PRIVATE_KEY" {
  type        = string
  description = "The private key acts as the password when making API requests."
}

variable "NOTIFICATION" {
  type        = string
  default     = "WEBHOOK"
  description = "Type of notification to send."
}

variable "ENABLE_ALARM_HOST_DOWN" {
  type        = bool
  default     = true
  description = "Enable alarm when your host is down"
}

variable "ENABLE_ALARM_HOST_HAS_INDEX_SUGGESTIONS" {
  type        = bool
  default     = true
  description = "Enable alarm when your host has index suggestions"
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_USER" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_90" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_60" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  type        = bool
  default     = true
  description = "Enable alarm when metric QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED is above a threshold, ratio of the number of documents scanned to the number of documents returned"
}

variable "ENABLE_ALARM_DISK_PARTITION_SPACE_USED_DATA" {
  type        = bool
  default     = true
  description = "Enable alarm when metric DISK_PARTITION_SPACE_USED_DATA is above a threshold, measurements on the amount of disk space used on partitions containing different types of MongoDB data."
}

variable "ENABLE_ALARM_DISK_PARTITION_UTILIZATION_DATA" {
  type        = bool
  default     = true
  description = "Enable alarm when metric DISK_PARTITION_SPACE_USED_DATA is above a threshold, measurements on the amount of disk space used on partitions containing different types of MongoDB data."
}

variable "ENABLE_ALARM_REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  type        = bool
  default     = true
  description = "Enable alarm when metric REPLICATION_OPLOG_WINDOW_RUNNING_OUT is above a threshold."
}

variable "ENABLE_ALARM_CONNECTIONS_PERCENT" {
  type        = bool
  default     = true
  description = "Enable alarm when metric CONNECTIONS_PERCENT is above a threshold. Measures connections to a MongoDB process."
}

variable "ENABLE_ALARM_CREDIT_CARD_ABOUT_TO_EXPIRE" {
  type        = bool
  default     = true
  description = "Enable alarm when credit card is about to expire."
}

variable "ENABLE_ALARM_NO_PRIMARY" {
  type        = bool
  default     = true
  description = "Enable alarm when replica set has no primary."
}

variable "ENABLE_ALARM_CLUSTER_MONGOS_IS_MISSING" {
  type        = bool
  default     = true
  description = "Enable alarm when cluster is missing an active mongos."
}

