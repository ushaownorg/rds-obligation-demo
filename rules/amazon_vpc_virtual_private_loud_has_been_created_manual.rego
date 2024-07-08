package rules.amazon_vpc_virtual_private_loud_has_been_created_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_67abb75f-5278-4a0c-bf66-47789be7d3a0"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "67abb75f-5278-4a0c-bf66-47789be7d3a0",
	"title": "Ensure Amazon VPC (Virtual Private Cloud) has been created (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.vpc_security_group_ids != null
}

