package rules.rds_delete_protection

__rego__metadoc__ := {
  "custom": {
    "controls": {
      "9f20c948-2648-4aaf-8e32-25011dafde32": [
        "9f20c948-2648-4aaf-8e32-25011dafde32_3.5"
      ]
    },
    "severity": "Medium"
  },
  "description": "RDS instance 'Deletion Protection' should be enabled. Enabling deletion protection ensures that any user or anonymous user can't accidentally or intentionally delete your database.",
  "id": "FG_R00280",
  "title": "RDS instance 'Deletion Protection' should be enabled"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.deletion_protection == true
}
