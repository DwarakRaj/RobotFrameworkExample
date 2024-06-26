*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
For Loop Execution in Robot
    FOR    ${i}     IN RANGE      0   10
       log to console      ${i}
    END

For Loop Execution
    FOR   ${j}    IN    1  2 3 4 5
       log to console      ${j}
    END
List Execution
    @{items}    create list  1   2   3   4   5
    FOR   ${k}    IN     @{items}
       log to console      ${k}
    END
For Execution Ways With String
    FOR   ${i}    IN  Rahul   Rakesh   John
        log to console      ${i}
    END
For Execution Ways With String List
    @{nameList}     create list     Rahul   Rakesh     John
    FOR   ${i}    IN   @{nameList}
       log to console      ${i}
    END

For Loop with Exit
    @{items}      create list   1   2   3   4   5
    FOR   ${i}    IN  @{items}
       log to console  ${i}
       exit for loop if    ${i}==3
    END