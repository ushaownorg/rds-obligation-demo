package rules.rds_storage_encrypted

__rego__metadoc__ := {
  "custom": {
    "controls": {
      "CIS-AWS_v1.4.0": [
        "CIS-AWS_v1.4.0_2.3.1"
      ]
    },
    "severity": "High"
  },
  "description": "RDS instances should be encrypted. Encrypting your RDS DB instances provides an extra layer of security by securing your data from unauthorized access. You have the option of using an AWS managed or customer managed KMS key for this purpose.",
  "id": "FG_R00093",
  "title": "RDS instances should be encrypted"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.storage_encrypted == true
}
