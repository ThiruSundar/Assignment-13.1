*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot


*** Test Cases ***
User should be able to Land on Flipkart Page
    [Tags]    sanity
    Open Flipkart URL
    Navigate to Category "Electronics"
    Click on "Headphones & Headsets"
    Search for 'boAt BassHeads'
    Go to details page
    Verify User navigated to the expected details
    Adding to cart
    Verify item in cart
    Close the Browser