*** Settings ***
Resource  ../Resources/SQL_Server.robot
Resource  ../Resources/Common.robot
Suite Setup  Connect
Suite Teardown  Disconnect

*** Variables ***
${TABLE_NAME} =  Students

*** Test Cases ***
Clean Table
    Delete All Rows From Table  ${TABLE_NAME}
    SQL_Server.Check Empty Table  ${TABLE_NAME}

Insert a Record
    SQL_Server.Save Current Row Count  ${TABLE_NAME}
    SQL_Server.Insert Data  ${TABLE_NAME}
    SQL_Server.Check Number of Rows  ${TABLE_NAME}

Log Specific Row
    Search Data  ${TABLE_NAME}

Delete a Record
    SQL_Server.Save Current Row Count  ${TABLE_NAME}
    SQL_Server.Delete Data  ${TABLE_NAME}
    SQL_Server.Check Number of Rows  ${TABLE_NAME}

*** Keywords ***
