package rules.rds_max_allocated_storage

__rego__metadoc__ := {
  "custom": {
    "controls": {
      "9f20c948-2648-4aaf-8e32-25011dafde32": [
        "9f20c948-2648-4aaf-8e32-25011dafde32_3.5"
      ]
    },
    "severity": "Medium"
  },
  "description": "RDS instance maximum storage limit",
  "id": "FG_R00290",
  "title": "RDS instance 'max storage should be as expected"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.max_allocated_storage < 50
}
