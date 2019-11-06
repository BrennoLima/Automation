*** Settings ***
Library  DatabaseLibrary

*** Variables ***
${DB_NAME} =  Users
${DB_USER_NAME} =  root
${DB_USER_PASSWORD} =  brenno012394
${DB_HOST} =  127.0.0.1
${DB_PORT} =  3306

*** Keywords ***
Connect
    connect to database  pymysql  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST}  ${DB_PORT}

Disconnect
    disconnect from database
