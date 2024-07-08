package rules.least_privilege_access_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_5ca31364-0c72-4956-bfbe-4006421ce8b8"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "5ca31364-0c72-4956-bfbe-4006421ce8b8",
	"title": "Ensure Least Privilege Access (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.publicly_accessible == false
}

