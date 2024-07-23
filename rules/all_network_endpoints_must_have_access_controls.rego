package rules.all_network_endpoints_must_have_access_controls


	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"ITPOLICY": [
					"ITPOLICY_5.0"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: Technology Governance - Information Technology - Information Security Policy - Version: 1",
		"id": "5.0",
		"title": "All Network endpoints must have access controls",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.network_endpoint_registered == true
}

