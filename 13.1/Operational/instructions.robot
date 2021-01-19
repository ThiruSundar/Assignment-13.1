*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Keywords ***
Open Flipkart URL
    Open Browser  ${url}  ${brows}   
    Maximize Browser Window
    sleep  2s
    Verify WebPage title  ${Expected_homePage}
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  9500158051
    Sleep   2s
    Input Password  xpath=//input[@type='password']  royalenfield
    Sleep   2s
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    Log to Console  Sub category found
    Sleep   2s
    Capture Page Screenshot
    
Navigate to Category "Electronics"
    Mouse Over  ${Expected_category}  
    Sleep   2s
    Click Element   ${Expected_category}
    Sleep   2s    
    Capture Page Screenshot

Click on "Headphones & Headsets"
    sleep  2s
    Click Element  ${Expected_Sub_Category}
    sleep  1s
    Log to Console  Category Found
    Capture Page Screenshot

Search for 'boAt BassHeads'
    # Scroll Element Into View  xpath=//div[text()="1. boAt BassHeads 900 Wired He..."]
    Click Element   xpath=//div[text()="4. boAt BassHeads 100 Wired He..."]
    sleep  3s
    Log to Console  Product Found
    Capture Page Screenshot

Go to details page
    sleep  2s
    Log to Console  Success
    Capture Page Screenshot
    
Verify User navigated to the expected details
    Log to Console  Details captured successfully
    Capture Page Screenshot

Verify WebPage title
    [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    Log to Console  ${title_name}
    Log to Console  Title verified
    Capture Page Screenshot

Adding to cart
    Select Window  NEW
    ${cart} =  get title
    Verify WebPage title  ${cart}
    Log to Console  ${cart}
    click Element  xpath= //*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    sleep  4s
    Capture Page Screenshot

Verify item in cart
    Click Element  xpath= //img[@title='Flipkart']
    sleep  2s
    Click Element  xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a
    sleep  2s
    Page should contain  boAt BassHeads 900 Wired Headset
    Log to Console  Item in cart page is Verified
    Capture Page Screenshot

Close the Browser
    Close Browser