package rules.access_keys_are_regularly_rotated_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_5cc5bd90-36da-43d7-ba2a-6f5931a876c8"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "5cc5bd90-36da-43d7-ba2a-6f5931a876c8",
	"title": "Ensure Access Keys are Regularly Rotated (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.key_rotated = true
}

