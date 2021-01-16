*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot


#robot -d results Tests/TestCases.robot  


*** Test Cases ***
User should be able to Land on Book details Page
    [Tags]    sanity
    Open Flipkart URL
    Navigate to Category "Electronics"
    Click on "Camera"
    Search for 'DSLR & Mirrorless'
    Go to Expected Book details page
    Verify User navigated to the expected product
    Adding to cart