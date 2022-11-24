*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
testGererUneAlert
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Sleep    3  
    Click Button    xpath=//input[@id='alert1']  
    Sleep    3 
    Alert Should Be Present    Hello
    #Handle Alert    accept
    Close Browser
