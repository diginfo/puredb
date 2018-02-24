ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $ROOT

NODE="/usr/share/nodejs"
PMDIR="pure"

function dbs_ {
  /usr/bin/pm2 kill;
  cd $ROOT
  rm -rf puredb  2>/dev/null
  
  read -p "Enter Database Name: " MYDB;
  read -p "Enter MYSQL Root Password: " MYPWD;
  echo "$MYPWD";
  
  echo "Dropping & Creating MYSQL Database $MYDB..."
  mysql -u root -p$MYPWD -e "DROP DATABASE IF EXISTS $MYDB; CREATE DATABASE $MYDB;"
  mysql -u root -p$MYPWD $MYDB < PUREMASTER.sql;
  
  echo "Copying dwap.db & dwapgrp.db to data folder..."
  read -p "Data Folder Path i.e /usr/share/nodejs/[pure|site]/data : " DWAP;
  cp -rp dwap.db $DWAP || exit 1
  cp -rp dwapgrp.db $DWAP || exit 1  
  
  pm2-start;
  echo "$MYDB, dwap.db & dwapgrp.db INSTALLED."; sleep 3
}

## Execute
dbs_
