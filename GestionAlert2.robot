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
    #Alert Should Be Present    Hello
    ${message_Alert}    Handle Alert  
    Log To Console    ${message_Alert}
    Should Be Equal    ${message_Alert}    Hello
    ${URL_SITE}    Get Location
    Log To Console    ${URL_SITE}
    Should Be Equal    ${URL_SITE}    http://omayo.blogspot.com/ 
    Close Browser
