package rules.all_network_endpoints_must_red_the_technology_inventory


	
	__rego__metadoc__ := {
		"custom": {
			"controls": {
				"ITPOLICY": [
					"ITPOLICY_2.0"
				]
			},
			"severity": "Medium"
		},
		"description": "Document: Technology Governance - Information Technology - Information Security Policy - Version: 1",
		"id": "2.0",
		"title": "All Network endpoints must be registered in the technology inventory",
	}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.network_endpoint_registered == true
}