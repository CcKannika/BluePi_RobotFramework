*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot

*** Variables ***
${function}             To Di List
${testcaseName}         toDoList2




*** Test Cases ***
To Do List 1
    [Documentation]   Test Scenario : Add Item and Delete task list on TO-DO Tasks tab.
    Open To Do List Website
    Wait Spinner Load
Add Item 
    Input Text  //input[contains(@id,"new-task")]   1
    Click Element   //button//i[contains(text(),'add')]
    Input Text  //input[contains(@id,"new-task")]   22
    Click Element   //button//i[contains(text(),'add')]
    Input Text  //input[contains(@id,"new-task")]   333
    Click Element   //button//i[contains(text(),'add')]
Delete TO DO Tasks
    Click Element    (//div//a[contains(text(),'To-Do Tasks')])
    Run Screenshot
    Click Element    (//button[contains(text(),'Delete')])[1]
    Click Element    (//button[contains(text(),'Delete')])[2]
    Run Screenshot
Close Browser
    Close Browser
