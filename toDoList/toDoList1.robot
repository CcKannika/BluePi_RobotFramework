*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot

*** Variables ***
${function}             To Di List
${testcaseName}         toDoList1




*** Test Cases ***
To Do List 1
    [Documentation]   Test Scenario : Add Item and select TO-DO Tasks for Completed.
    Open To Do List Website
    Wait Spinner Load
Add Item 
    Input Text  //input[contains(@id,"new-task")]   1
    Click Element   //button//i[contains(text(),'add')]
    Input Text  //input[contains(@id,"new-task")]   22
    Click Element   //button//i[contains(text(),'add')]
    Input Text  //input[contains(@id,"new-task")]   333
    Click Element   //button//i[contains(text(),'add')]
Select TO DO Tasks
    Click Element    (//div//a[contains(text(),'To-Do Tasks')])
    Run Screenshot
    Click Element    (//div//ul[contains(@id,"incomplete-tasks")]//li)[1]//span[4]
    Click Element    (//div//ul[contains(@id,"incomplete-tasks")]//li)[2]//span[4]
Completed Tasks List
    Click Element    (//div//a[contains(text(),'Completed')])
    Run Screenshot
Close Browser
    Close Browser
