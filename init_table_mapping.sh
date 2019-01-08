# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")


task_id=customer-service-prod-messages-history
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "messages_history"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=asc-weixin-mp-menu-click-his
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "menu_click_his"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=customer-service-prod-others
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "customer_service_worker"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "caseinfo"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "sessiontime"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "4",
      "rule-name": "4",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "system_account"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=asc-weixin-mp-others
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "satisfaction_survey"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "alias_desc"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "4",
      "rule-name": "4",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer_product"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=cdc-customer-service-prod
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "customer_service_worker"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "caseinfo"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "sessiontime"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "4",
      "rule-name": "4",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "system_account"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "5",
      "rule-name": "5",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "messages_history"
      },
      "rule-action": "include"
    }
  ]
}
EOF

task_id=cdc-asc-weixin-mp
cat << EOF > $script_path/json/${task_id}_table.json
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "satisfaction_survey"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "2",
      "rule-name": "2",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "3",
      "rule-name": "3",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "alias_desc"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "4",
      "rule-name": "4",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer_product"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "5",
      "rule-name": "5",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "menu_click_his"
      },
      "rule-action": "include"
    }
  ]
}
EOF

ls -l  $script_path/json
