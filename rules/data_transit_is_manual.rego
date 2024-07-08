package rules.data_transit_is_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb": [
				"1cb6574e-8e8e-48d8-bf9f-5bf3bb12a1eb_064fc11a-fdac-4c72-9fa0-badb4a078da4"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS RDS - Version: 1.0.0",
	"id": "064fc11a-fdac-4c72-9fa0-badb4a078da4",
	"title": "Ensure Data in Transit is Encrypted (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.skip_final_snapshot == false
}

