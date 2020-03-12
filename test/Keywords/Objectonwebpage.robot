*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${text}=  Get Text   //*[@id="MissingUname"]/p/label/font
${text2}=  Get Text   //*[@id="MissingUnamePasswd"]/p/label/font
*** Keywords ***

Change Frame
    Select Frame    id=iframe-015
    
Objectonwebpage 

    Wait Until Element Is Visible    xpath=//div[@class='box']/h1
    Page Should Contain Element       xpath= //div[@class='box']/h1    My Account
    

    Wait Until Element Is Visible   xpath= //input[@name='email']
    Page Should Contain Element       xpath= //input[@name='email']    
    
    

    Wait Until Element Is Visible          xpath= //input[@name='passwd']
    Page Should Contain Element            xpath= //input[@name='passwd']


    Wait Until Element Is Visible    xpath= //div[@name='SignIn']
    Page Should Contain Element      xpath= //div[@name='SignIn']


    Wait Until Element Is Visible    xpath= //div[@id='btn2']
    Page Should Contain Element      xpath= //div[@id='btn2']


   Wait Until Element Is Visible    xpath= //u[contains(text(),'Click Here!')]
    Page Should Contain Element       xpath= //u[contains(text(),'Click Here!')]      
           
 
    Wait Until Element Is Visible    xpath= //p[contains(text(),'Forgot your password?')]
    Page Should Contain Element       xpath= //p[contains(text(),'Forgot your password?')]    
Defulatvalueusernamepassword
    Element Attribute Value Should Be    xpath= //input[@name='email']    value    email 
    Element Attribute Value Should Be    xpath= //input[@name='passwd']    value    password  
    
Enter email and remove password   
    Wait Until Keyword Succeeds    2s    2s    Clear Element Text    xpath= //input[@name='email']    
    Input Password    xpath= //input[@name='email']    test@test.com 
    Wait Until Keyword Succeeds    2s    2s    Clear Element Text    xpath= //input[@name='passwd'] 
    Click Element    xpath= //div[@name='SignIn']       
    Run Keyword If    '${text}'=='Please enter password'    Log To Console     ${text}
    #Page Should Contain    Please enter username    
    
remove email and enter password
    Wait Until Keyword Succeeds    2s    2s    Clear Element Text    xpath= //input[@name='email']    
    Input Password    xpath= //input[@name='passwd']    abc123  
    Click Element    xpath= //div[@name='SignIn']       
    Run Keyword If    '${text}'=='Please enter username'    Log To Console     ${text}
    #Page Should Contain    Please enter username    
 
remove both email and passowrd
    Wait Until Keyword Succeeds    2s    2s    Clear Element Text    xpath= //input[@name='email']   
    Wait Until Keyword Succeeds    2s    2s    Clear Element Text    xpath= //input[@name='passwd']   
    Click Element    xpath= //div[@name='SignIn']       
    Run Keyword If    '${text2}'=='Please enter username and password'    Log To Console     ${text}
    #Page Should Contain    Please enter username   
    
    
       
    