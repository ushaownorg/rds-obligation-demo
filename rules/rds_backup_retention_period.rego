package rules.rds_backup_retention_period

__rego__metadoc__ := {
  "custom": {
    "controls": {
      "9f20c948-2648-4aaf-8e32-25011dafde32": [
        "9f20c948-2648-4aaf-8e32-25011dafde32_3.3"
      ]
    },
    "severity": "Medium"
  },
  "description": "RDS instances should have backup retention periods configured. Retention periods for RDS backups should be configured according to business and regulatory needs. Backups should not be retained longer than is strictly necessary. When retention is properly configured, malicious individuals will be unable to retrieve data when it is no longer needed.",
  "id": "FG_R00107",
  "title": "RDS instances should have backup retention periods configured"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.backup_retention_period > 0
}
