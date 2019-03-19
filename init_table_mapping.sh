# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

mkdir -p $script_path/json

task_id=full-customer-service-prod-messages-history
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

task_id=full-asc-weixin-mp-menu-click-his
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

task_id=full-cdc-csswechat
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
        "table-name": "products"
      },
      "rule-action": "include"
    },    
    {
      "rule-type": "selection",
      "rule-id": "6",
      "rule-name": "6",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "platform_caseinfo"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "50",
      "rule-name": "50",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "satisfaction_survey"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "51",
      "rule-name": "51",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "52",
      "rule-name": "52",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "alias_desc"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "53",
      "rule-name": "53",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "customer_product"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "54",
      "rule-name": "54",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_talk"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "55",
      "rule-name": "55",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_talk_session"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "56",
      "rule-name": "56",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_talk_session_attr"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "57",
      "rule-name": "57",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_talk_session_group"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "58",
      "rule-name": "58",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_talk_session_group_relation"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "59",
      "rule-name": "59",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "service_center_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "60",
      "rule-name": "60",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "cpc_computer_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "61",
      "rule-name": "61",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "cpc_printer_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "62",
      "rule-name": "62",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "user_driveinfo"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "63",
      "rule-name": "63",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "video_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "64",
      "rule-name": "64",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "video"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "65",
      "rule-name": "65",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "warranty_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "66",
      "rule-name": "66",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "order_search_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "67",
      "rule-name": "67",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "km_record"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "68",
      "rule-name": "68",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_zkm"
      },
      "rule-action": "include"
    },
    {
      "rule-type": "selection",
      "rule-id": "69",
      "rule-name": "69",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20181"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },
    {
      "rule-type": "selection",
      "rule-id": "70",
      "rule-name": "70",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20182"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },     
    {
      "rule-type": "selection",
      "rule-id": "71",
      "rule-name": "71",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20183"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },
    {
      "rule-type": "selection",
      "rule-id": "72",
      "rule-name": "72",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20184"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },     
    {
      "rule-type": "selection",
      "rule-id": "73",
      "rule-name": "73",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20191"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },
    {
      "rule-type": "selection",
      "rule-id": "74",
      "rule-name": "74",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20192"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },     
    {
      "rule-type": "selection",
      "rule-id": "75",
      "rule-name": "75",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20193"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },     
    {
      "rule-type": "selection",
      "rule-id": "76",
      "rule-name": "76",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20194"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },     
    {
      "rule-type": "selection",
      "rule-id": "77",
      "rule-name": "77",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "t_chat_operate_20201"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "chat_id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "2"
            }
          ]
        }
      ]      
    },           
    {
      "rule-type": "selection",
      "rule-id": "101",
      "rule-name": "101",
      "object-locator": {
        "schema-name": "asc_weixin_mp",
        "table-name": "menu_click_his"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "id",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "22807439"
            }
          ]
        }
      ]
    },    
    {
      "rule-type": "selection",
      "rule-id": "102",
      "rule-name": "102",
      "object-locator": {
        "schema-name": "customer_service_prod",
        "table-name": "messages_history"
      },
      "rule-action": "include",
      "filters": [
        {
          "filter-type": "source",
          "column-name": "MSG_ID",
          "filter-conditions": [
            {
              "filter-operator": "gte",
              "value": "41154445"
            }
          ]
        }
      ]
    }
  ]
}
EOF


ls -l  $script_path/json

