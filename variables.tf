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

variable "HOST_DOWN" {
  type        = map(string)
  description = "HOST_DOWN  alarm settings."
  default = {
    INTERVAL_MIN = "15"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
  }
}

variable "ENABLE_ALARM_HOST_HAS_INDEX_SUGGESTIONS" {
  type        = bool
  default     = true
  description = "Enable alarm when your host has index suggestions"
}

variable "HOST_HAS_INDEX_SUGGESTIONS" {
  type        = map(string)
  description = "HOST_HAS_INDEX_SUGGESTIONS alarm settings."
  default = {
    INTERVAL_MIN = "15"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
  }
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_USER" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "NORMALIZED_SYSTEM_CPU_USER" {
  type        = map(string)
  description = "NORMALIZED_SYSTEM_CPU_USER alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 90
    UNITS        = "RAW"
    MODE         = "AVERAGE"

  }
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_90" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "NORMALIZED_SYSTEM_CPU_STEAL_90" {
  type        = map(string)
  description = "NORMALIZED_SYSTEM_CPU_STEAL_90 alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 90
    UNITS        = "RAW"
    MODE         = "AVERAGE"

  }
}

variable "ENABLE_ALARM_NORMALIZED_SYSTEM_CPU_STEAL_60" {
  type        = bool
  default     = true
  description = "Enable alarm when CPU usage of processes on the host server is above a threshold, scaled to a range of 0-100% by dividing by the number of CPU cores."
}

variable "NORMALIZED_SYSTEM_CPU_STEAL_60" {
  type        = map(string)
  description = "NORMALIZED_SYSTEM_CPU_STEAL_60 alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 60
    UNITS        = "RAW"
    MODE         = "AVERAGE"

  }
}

variable "ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  type        = bool
  default     = true
  description = "Enable alarm when metric QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED is above a threshold, ratio of the number of documents scanned to the number of documents returned"
}

variable "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED" {
  type        = map(string)
  description = "QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 1000
    UNITS        = "RAW"
    MODE         = "AVERAGE"

  }
}

variable "ENABLE_ALARM_DISK_PARTITION_SPACE_USED_DATA" {
  type        = bool
  default     = true
  description = "Enable alarm when metric DISK_PARTITION_SPACE_USED_DATA is above a threshold, measurements on the amount of disk space used on partitions containing different types of MongoDB data."
}

variable "DISK_PARTITION_SPACE_USED_DATA" {
  type        = map(string)
  description = "DISK_PARTITION_SPACE_USED_DATA alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 90
    UNITS        = "RAW"
    MODE         = "AVERAGE"

  }
}

variable "ENABLE_ALARM_DISK_PARTITION_UTILIZATION_DATA" {
  type        = bool
  default     = true
  description = "Enable alarm when metric DISK_PARTITION_SPACE_USED_DATA is above a threshold, measurements on the amount of disk space used on partitions containing different types of MongoDB data."
}

variable "DISK_PARTITION_UTILIZATION_DATA" {
  type        = map(string)
  description = "DISK_PARTITION_UTILIZATION_DATA alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 90
    UNITS        = "RAW"
    MODE         = "AVERAGE"
  }
}

variable "ENABLE_ALARM_REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  type        = bool
  default     = true
  description = "Enable alarm when metric REPLICATION_OPLOG_WINDOW_RUNNING_OUT is above a threshold."
}

variable "REPLICATION_OPLOG_WINDOW_RUNNING_OUT" {
  type        = map(string)
  description = "REPLICATION_OPLOG_WINDOW_RUNNING_OUT alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 1
    UNITS        = "HOURS"
  }
}

variable "ENABLE_ALARM_CONNECTIONS_PERCENT" {
  type        = bool
  default     = true
  description = "Enable alarm when metric CONNECTIONS_PERCENT is above a threshold. Measures connections to a MongoDB process."
}

variable "CONNECTIONS_PERCENT" {
  type        = map(string)
  description = "CONNECTIONS_PERCENT alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
    OPERATOR     = "GREATER_THAN"
    THRESHOLD    = 80
    UNITS        = "RAW"
    MODE         = "AVERAGE"
  }
}

variable "ENABLE_ALARM_CREDIT_CARD_ABOUT_TO_EXPIRE" {
  type        = bool
  default     = true
  description = "Enable alarm when credit card is about to expire."
}

variable "CREDIT_CARD_ABOUT_TO_EXPIRE" {
  type        = map(string)
  description = "CREDIT_CARD_ABOUT_TO_EXPIRE  alarm settings."
  default = {
    INTERVAL_MIN = "1440"
    DELAY_MIN    = "0"
    NOTIFICATION = "WEBHOOK"
  }
}

variable "ENABLE_ALARM_NO_PRIMARY" {
  type        = bool
  default     = true
  description = "Enable alarm when replica set has no primary."
}

variable "NO_PRIMARY" {
  type        = map(string)
  description = "NO_PRIMARY  alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "15"
    NOTIFICATION = "WEBHOOK"
  }
}

variable "ENABLE_ALARM_CLUSTER_MONGOS_IS_MISSING" {
  type        = bool
  default     = true
  description = "Enable alarm when cluster is missing an active mongos."
}

variable "CLUSTER_MONGOS_IS_MISSING" {
  type        = map(string)
  description = "CLUSTER_MONGOS_IS_MISSING  alarm settings."
  default = {
    INTERVAL_MIN = "60"
    DELAY_MIN    = "15"
    NOTIFICATION = "WEBHOOK"
  }
}