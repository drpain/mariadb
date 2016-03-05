#!/bin/bash
if [ -z -a "$MYSQL_SIZE" ]; then
  
  if [ "$MYSQL_SIZE" == "small" ]; # Small
  then
    echo "Setting lower memory limits (64M)";
    sed -i 's/256M/64M/' /etc/mysql/my.cnf && sed -i 's/512M/64M/' /etc/mysql/my.cnf
 
  elif [ "$MYSQL_SIZE" == "medium" ];  # Medium
  then
    echo "Setting lower memory limits (128M)";
    sed -i 's/256M/128M/' /etc/mysql/my.cnf && sed -i 's/512M/128M/' /etc/mysql/my.cnf
  
  else # Default
    echo "Normal memory limits used"
  fi
fi
