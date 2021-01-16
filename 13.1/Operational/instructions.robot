*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Keywords ***
Open Flipkart URL
    Open Browser  ${url_books}  ${brows}   
    Maximize Browser Window
    sleep  4s
    Verify WebPage title  ${Expected_homePage}
    Clear Element Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  9500158051
    Sleep   3s
    Clear Element Text  xpath=//input[@type='password']
    Input Password  xpath=//input[@type='password']  royalenfield
    Sleep   3s
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    Log to Console  Step2
    Sleep   3s
    
Navigate to Category "Electronics"
    Mouse Over  ${Expected_category}  
    Sleep   5s
    #Click Element  ${exp_catagory} 
    #Sleep   2s
    Click Element   ${Expected_category}
    Sleep   5s
    #Verify WebPage title  ${Exp_title}
    Sleep   7s
    

Click on "Headphones & Headsets"
    #Mouse Over  ${static_categ_name}
    #sleep  1s
    Mouse Over  ${Expected_Sub_Category}
    sleep  3s
    Click Element  ${Expected_Sub_Category}
    sleep  1s
    #Verify WebPage title  ${}
    Log to Console  Step3


Search for 'boAt BassHeads'
    ${cat_list} =  Get Element Count  xpath= //*[@id="container"]/div/div[3]/div[3]/div/div[2]/div[16]/div/div[6]/div[1]/div[2]/a/div[1]/div
    #Log to Console  ${buk_list}
    FOR  ${j}  IN RANGE  2  ${cat_list}
    ${cat_name} =  Get Text  title = boAt BassHeads 100 Wired He...
    Set Test Variable  ${exact_cat_elem}  xpath= //*[@id="container"]/div/div[3]/div[3]/div/div[2]/div[16]/div/div[6]/div[1]/div[2]/a/div[1]/div
    Log to Console  Step4

Go to details page
    sleep  5s
    Click Element  ${Product}
    Log to Console  Step5
    
Verify User navigated to the expected details
    #Verify WebPage title  
    Log to Console  Step6

Verify WebPage title
    [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    Log to Console  ${title_name}
    Log to Console  Pass!!
Adding book to cart
    Click Element  xpath=//a[contains(text(),'@Flipkart')]
    Select Window  ${Product}
    click Element  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button