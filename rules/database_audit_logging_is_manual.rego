package rules.database_audit_logging_is_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_181e0579-b929-45ea-a544-76c09c75d717"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "181e0579-b929-45ea-a544-76c09c75d717",
	"title": "Ensure Database Audit Logging is Enabled (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.audit_log_enabled == true
}

