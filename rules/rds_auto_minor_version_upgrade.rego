package rules.rds_auto_minor_version_upgrade

__rego__metadoc__ := {
   "custom": {
    "controls": {
      "9f20c948-2648-4aaf-8e32-25011dafde32": [
        "9f20c948-2648-4aaf-8e32-25011dafde32_3.2"
      ]
    },
    "severity": "High"
  },
  "description": "Ensure Auto Minor Version Upgrade feature is Enabled for RDS Instances ",
  "id": "FG_R00288",
  "title": "Auto Minor Version Upgrade feature Enabled for RDS Instances"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.auto_minor_version_upgrade == true
}