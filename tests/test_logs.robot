*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Default Tags      Positive

*** Test Cases ***
TestCase
    Log    Helloworld
    Log    Messages
    Log    New Messages
    Set Global Variable    ${OUTPUT DIR}   D:\Projects\GitHub\robottest\output 
    Set Global Variable    ${OUTPUT FILE}    D:\Projects\GitHub\robottest\output\out.xml

TestCase#2
    Log    Helloworld#2
    Log    Messages#2
    Log    New Messages#2

