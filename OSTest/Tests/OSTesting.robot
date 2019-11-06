*** Settings ***
Resource  ../Resources/OSTestingApp.robot

*** Variables ***

*** Test Cases ***
Create Some Directories
    Create Base Directory
    Create Directory 1
    Create Directory 2
    Create Directory 3

Create Some Files
    Create File 1
    Create File 2
    Create File 3

Move a File
    Move File 3 From Directory 3 to Directory 2

Copy a File
    Copy File 1 From Directory 1 to Directory 2

Delete a File
    Remove File 1 From Directory 1

*** Keywords ***
