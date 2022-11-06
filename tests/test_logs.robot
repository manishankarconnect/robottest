*** Settings ***
Library    OperatingSystem
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Default Tags      Positive

*** Test Cases ***
TestCase
    Log    Helloworld
    Log    Messages
    Log    New Messages
    Comment    This is a comment section

TestCase#2
    Set Test Documentation    String Concantenation.
    ${STR1}    Catenate    Hello    World
    ${STR2}    Catenate    SEPARATOR=--    Hello    World
    Log    ${STR1} 
    Log    ${STR2}

TestCase#3
    ${result}    Convert To Binary    10
    ${result}    Convert To Binary    -2
    ${result}    Convert To Binary    F    base=16
    ${result}    Convert To Hex    -2
    ${result}    Convert To Hex    10
    ${result}    Convert To Octal    10
    ${result}    Convert To Bytes    200    int

TestCase#4
    &{dict1}    Create Dictionary    key=foo    value=bar
    Should Be True    ${dict1}    {"key":"foo", "value":"bar"}
    &{dict2}    Create Dictionary    key    foo    value    bar
    Should Be True    ${dict1}    ${dict2}

TestCase#5
    @{list1}    Create List    a    b    c
    ${intlist}    Create List    ${1}    ${2}    3
    Log    ${list1}
    Log    ${intlist}

TestCase#6
    ${result}    Set Variable    ${3.14}
    ${status}    Evaluate    0<${result}<10

TestCase#7
    @{values}    Create List    ENTRY    EXIT    CONT 
    FOR    ${var}    IN    @{values}
        Run Keyword If    '${var}' == 'EXIT'    Exit For Loop
        Log    ${var}
    END   

TestCase#8
    Fail    Test Not Ready    not-ready

TestCase#9
    @{values}    Create List    ENTRY    EXIT    CONT 
    ${count}    Get Count    ${values}    EXIT
    ${length}    Get Length    ${values}

TestCase#10
    ${time}    Get Time
    ${secs}    Get Time    epoch
    ${year}    Get Time    year
    ${yyyy}    ${mm}    ${dd}    Get Time    year,month,day
    @{time}    Get Time    year month day hour min sec
    ${y}    ${s}    Get Time    seconds and year