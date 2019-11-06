*** Settings ***
Library  OperatingSystem

*** Variables ***
${output_directory} =  Outputs
${directory_1} =  first_directory
${directory_2} =  second_directory
${directory_3} =  third_directory
${file_1} =  first_file.txt
${file_2} =  second_file.txt
${file_3} =  third_file.txt


*** Keywords ***
Create Base Directory
    Create Directory  ${output_directory}
    Should Exist  ${output_directory}

Create Directory 1
    ${directory_path} =  Join Path  ${output_directory}  ${directory_1}
    Create Directory  ${directory_path}
    Should Exist  ${directory_path}

Create Directory 2
    ${directory_path} =  Join Path  ${output_directory}  ${directory_2}
    Create Directory  ${directory_path}
    Should Exist  ${directory_path}

Create Directory 3
    ${directory_path} =  Join Path  ${output_directory}  ${directory_3}
    Create Directory  ${directory_path}
    Should Exist  ${directory_path}

Create File 1
    ${file_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    Create File  {$file_path}  Here are some text from the file
    Should Exist  ${file_path}

Create File 2
    ${file_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_2}
    Create File  {$file_path}  Here are some text from the file 2
    Should Exist  ${file_path}

Create File 3
    ${file_path} =  Join Path  ${output_directory}  ${directory_3}  ${file_3}
    Create File  {$file_path}  Here are some text from the file 3
    Should Exist  ${file_path}

Move File 3 From Directory 3 to Directory 2
    ${source_path} =  Join Path  ${output_directory}  ${directory_3}  ${file_3}
    ${target_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_3}
    Move File  ${source_path}  ${target_path}
    Should Exist  ${target_path}
    Should Not Exist  ${source_path}

Copy File 1 From Directory 1 to Directory 2
    ${source_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    ${target_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_1}
    Copy File  ${source_path}  ${target_path}
    Should Exist  ${target_path}
    Should Not Exist  ${source_path}

Remove File 1 From Directory 1
    ${source_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    Remove File  ${source_path}
    Should Not Exist  ${source_path}


