*** Variables ***
${urlToDoList}          https://abhigyank.github.io/To-Do-List/
${Browser}              chrome


*** Keywords ***
Open To Do List Website
    Open Browser    ${urlToDoList}   ${Browser} 
    Set Selenium speed  0.3
    Maximize browser Window

Wait Spinner Load
    Wait Until Element Is Not Visible   (//ngx-spinner[@class="black-overlay"])     30


Run Screenshot
    Sleep   2
    Capture Page Screenshot     ${OUTPUTDIR}/${function}/${testcaseName}/MyPicture_{index}.png