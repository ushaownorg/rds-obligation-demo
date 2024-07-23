package rules.database_audit_logging_is_manual


	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0": [
					"2210b21d-c1a8-4f60-9172-0f6f7a5ac2d0_2fe70c0e-8985-41b0-bb89-f3a8d7a40792"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: testing-1615 - Version: 1.0.5",
		"id": "2fe70c0e-8985-41b0-bb89-f3a8d7a40792",
		"title": "Ensure Database Audit Logging is Enabled (Manual)",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.audit_log_enabled == true
}

