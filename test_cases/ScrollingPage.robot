*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://testautomationpractice.blogspot.com/

*** Test Cases ***
Scrolling Page using JavaScript executor

    Launch Browser

     execute javascript  window.scrollTo(0,1500)
     Scroll Element Into View    xpath://div/h2[contains(text(),'Slider')]

     # Use above or below code to scroll i) till element ii) till end of webpage
#    execute javascript  window.scroll(0,document.body.scrollHeight)
#    sleep    5

    Close All Browsers

*** Keywords ***
Launch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


