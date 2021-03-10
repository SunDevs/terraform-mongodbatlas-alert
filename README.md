# Terraform MongoDB Atlas Alert Module

Terraform Mongodbatlas Alert is a module for creation of alarms in mongodb atlas.

## Provision Instructions

Copy and paste into your Terraform configuration, insert the variables, and run **terraform init** :
```bash
module "alert" {
  source  = "SunDevs/alert/mongodbatlas"
  version = "1.0.0"
  # insert the 1 required variable here
}
```

## Usage

**Example 1**
Use all default settings

```bash
module "name-module" {
  source     = "SunDevs/alert/mongodbatlas"
  PROJECT_ID = var.PROJECT_ID
}
```

**Example 2** Customize settings

```bash
module "name-module" {
  source     = "SunDevs/alert/mongodbatlas"
  PROJECT_ID = var.PROJECT_ID

  ENABLE_ALARM_QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED = true
  QUERY_TARGETING_SCANNED_OBJECTS_PER_RETURNED = {
    DELAY_MIN    = 90
    INTERVAL_MIN = 0
    NOTIFICATION = "WEBHOOK"
    MODE         = "AVERAGE"
    UNITS        = "RAW"
    THRESHOLD    = "200"
    OPERATOR     = "GREATHER_THAN"
  }
}
```
