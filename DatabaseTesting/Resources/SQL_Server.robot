*** Settings ***
Library  DatabaseLibrary
Library  Dialogs

*** Variables ***
${rows}
${previous_row}
${FIRST_NAME} =  Brenno
${LAST_NAME} =  Lima
${AGE} =  22
${ID} =  101010

*** Keywords ***
Check Empty Table
    [Arguments]  ${TABLE_NAME}
    Row Count Is Equal To X  select * from ${TABLE_NAME}  0

Save Current Row Count
    [Arguments]  ${TABLE_NAME}
    ${current_row} =  Row Count  SELECT * FROM ${TABLE_NAME}
    Set Suite Variable  ${previous_row}  ${current_row}

Check Number of Rows
    [Arguments]  ${TABLE_NAME}
    ${new_row_count} =  Row Count  SELECT * FROM ${TABLE_NAME}
    Should Not Be Equal as Numbers  ${new_row_count}  ${previous_row}

Insert Data
    [Arguments]  ${TABLE_NAME}
    Execute Sql String  INSERT INTO ${TABLE_NAME} VALUES(${ID}, '${FIRST_NAME}', '${LAST_NAME}', ${AGE});
    Save

Delete Data
    [Arguments]  ${TABLE_NAME}
    Execute Sql String  DELETE FROM ${TABLE_NAME} WHERE FIRST_NAME = '${FIRST_NAME}';
    Save

Search Data
    [Arguments]  ${TABLE_NAME}
    ${query_result} =  Query  SELECT * FROM ${TABLE_NAME} WHERE ID = ${ID}
    log  ${query_result}

Save
    Execute SQL String  commit;






