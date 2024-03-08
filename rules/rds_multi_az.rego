package rules.multi_az

__rego__metadoc__ := {
   "custom": {
    "controls": {
      "9f20c948-2648-4aaf-8e32-25011dafde32": [
        "9f20c948-2648-4aaf-8e32-25011dafde32_3.3"
      ]
    },
    "severity": "Medium"
  },
  "description": "Require Multi Availability Zones turned on for RDS Instances. Provisioning multi-AZ RDS instances provides enhanced availability and durability in case of AZ failure.",
  "id": "FG_R00251",
  "title": "Require Multi Availability Zones turned on for RDS Instances"
}

input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.multi_az == true
}
