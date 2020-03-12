*** Settings ***
Resource    Keywords/CommonKeyword.robot
Resource    Keywords/Objectonwebpage.robot
Test Teardown    Close Browser
*** Test Cases ***
# TC01-Login screen-objects on the page
    # Loginandnavigate
    # Change Frame
    # Objectonwebpage
    
    
# verify username and password value
    # Loginandnavigate
    # Change Frame
    # Defulatvalueusernamepassword
    
# user that doesn't enter username
    # Loginandnavigate
    # Set Selenium Speed    0.5  
    # Change Frame
    # remove email and enter password
    
# user that doesn't enter password
    # Loginandnavigate
    # Set Selenium Speed    0.5  
    # Change Frame
    # Enter email and remove password
    
# user doesn't enter both username nor password
    # Loginandnavigate
    # Set Selenium Speed    0.5  
    # Change Frame
    # remove both email and passowrd
    

Testcase1
   
    Log    this is the first test case1
 
Testcases2
     [Tags]    mytag
    Log    this is the second test case2
Testcase3
    Log  this is the third testcase        
    