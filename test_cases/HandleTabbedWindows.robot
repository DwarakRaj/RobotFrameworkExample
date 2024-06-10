*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Handle Tabbed Windows
    #switch to tab with switch window key word is not working - Dwarak added on 10th June 2024
    Lunch Browser

    Click Element    xpath://*[@id="Tabbed"]/a/button
    select window   Sakinalium | Home
    sleep   2
    Click Element   link:Contact
    sleep   3
    Close All Browsers

*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window