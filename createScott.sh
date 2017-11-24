#!/bin/bash
/opt/oracle/startDB.sh

sqlplus / as sysdba<<SQL
alter session set container=orclpdb1;

create user scott identified by tiger;
grant connect,resource to scott;
SQL
