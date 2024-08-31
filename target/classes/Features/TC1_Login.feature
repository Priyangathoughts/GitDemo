Feature: Verifying OMR Branch Hotel Login Automation

  Scenario Outline: Verifying Login with valid Credentials
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome Hemamalini"

    Examples: 
      | UserName                  | PassWord        |
      | priyangasiva1@gmail.com   | priyasairam@123 |

  Scenario Outline: Verifying Login with valid Credentials using ENTER Key
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>" with Enter Key
    Then User should verify success message after login "Welcome Hemamalini"

      | UserName                  | PassWord        |
      | priyangasiva1@gmail.com   | priyasairam@123 |
    

  Scenario Outline: Verifying Login with invalid Credentials
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify error message after login "Invalid Login details or your password might have expired"

    Examples: 
      | UserName                  | PassWord        |
      | priyangasiva1@gmail.com   | priyasairam@123 |
    