*** Settings ***
Library    SeleniumLibrary    
*** Keywords ***
Loginandnavigate
    Open Browser    http://ngendigital.com/demo-application    Chrome
    Maximize Browser Window
    Element Text Should Be    //*[@id="16da481d-8afc-43cd-a6a9-cb9986a857d0"]/div/div/section/div/h1/span   Login to Flight Application
     #Page Should Contain   Login to Flight Application    
 