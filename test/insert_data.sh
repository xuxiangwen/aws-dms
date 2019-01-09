# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../dms.conf

i=0
rows=10000
while [ "$i" != "$rows" ]
do
  sleep 10
  echo `date +%Y-%m-%dT%H:%M:%S` : insert 10 records
  $script_path/../db/mysql/sql.sh  'insert into asc_weixin_mp.menu_click_his ( msgType, event, eventKey, fromUserName, toUserName, clickDate, alias) select msgType, event, eventKey, fromUserName, toUserName, NOW(), alias from asc_weixin_mp.menu_click_his where id <= 10;' asc_weixin_mp
  i=$(( $i + 10 ))
done
