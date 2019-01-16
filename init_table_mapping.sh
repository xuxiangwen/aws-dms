# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

mkdir -p $script_path/json

task_id=full-A
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "A"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=full-B
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "B"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=full-others
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "C"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "D"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "E"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=cdc-all
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "schema1",
        "table-name": "A"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "schema1",
        "table-name": "B"
      },
      "rule-action": "include"
    },
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "C"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "4",
      "rule-name": "4",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "D"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "5",
      "rule-name": "5",
      "object-locator": {
        "schema-name": "schema_1",
        "table-name": "E"
      },
      "rule-action": "include"
    }    
  ]
}
EOF



ls -l  $script_path/json
