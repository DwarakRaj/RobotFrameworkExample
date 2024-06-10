*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}       https://www.techlistic.com/p/selenium-practice-form.html
${profession}       xpath://input[@id='profession-0']
${firstname}        xpath://input[@name='firstname']

*** Test Cases ***
LoginTest

    open browser        ${url}      ${browser}
    maximize browser window
    set selenium speed    1second
    logintoApplication
    Click on gender
    Select Profession
    listbox item
    close browser

*** Keywords ***
logintoApplication
    #textbox
    scroll element into view    ${firstname}
    element should be visible   ${firstname}
    element should be enabled   ${firstname}
    input text      ${firstname}        sathya
    clear element text      ${firstname}
    input text      ${firstname}        sathya
Click on gender
    #radio button usage
    scroll element into view    xpath://input[@id='sex-0']
    click element    xpath://input[@id='sex-0']
    element should be enabled   xpath://input[@id='sex-1']
    click element    xpath://input[@id='sex-0']
    SELECT RADIO BUTTON    exp    exp-5


Select Profession
    #checkbox is checkbox should be selected
    scroll element into view        ${profession}
    click element    ${profession}
    element should be enabled    ${profession}
    select checkbox    tool-0
    unselect checkbox    tool-0
    select checkbox    tool-2
    select from list by label    continents     South America
    select from list by index    continents     6
    sleep    1

listbox item
    #select from list box for countries
    select from list by label    selenium_commands      Navigation Commands
    select from list by label    selenium_commands      Switch Commands
    select from list by label    selenium_commands      Wait Commands
    sleep    1
    unselect from list by label     selenium_commands      Navigation Commands
    sleep    1