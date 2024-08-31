Feature: OMRBranch Hotel Booking Details Automation

  Scenario Outline: Verify book hotel incluting GST-Card(debit card-Visa)with Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add the guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User add the GST details "<Enter Registration No>","<Enter Company Name>" and "<Enter Company Address>" and click Next
    And User add the special request "<Any Other Request?>"
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552222 | priyanga     | March | 2024 | 123 |
      | Mastercard  | 5555555555554444 | priyanga     | March | 2024 | 123 |
      | Amex        | 5555555555550000 | priyanga     | March | 2024 | 123 |
      | Discover    | 5555555555556666 | priyanga     | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed" and save the orderId
    And User should verify same selected Hotel is presend

    Examples: 
      | UserName                | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name    | Last Name   | Mobile No  | Email                    | Enter Registration No | Enter Company Name     | Enter Company Address | Any Other Request? |
      | priyangasiva1@gmail.com | Priyasiva@123   | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga      | sivaraj     |9344979743  |  priyangasiva1@gmail.com |9043592058             |Greens Tech OMR Branch  | Thoraipakkam          | Add bonfire        |

  Scenario Outline: Verify book hotel incluting GST-Card(credit card-Visa)with Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<checkOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the hotel booking alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User add the GST details "<Enter Registration No>","<Enter Company Name>" and "<Enter Company Address>" and click Next
    And User add the special request "<Any Other Request?>"
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552223 | priyanga  | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed" and save the orderId
    And User should verify same selected hotel is presend

    Examples: 
      | UserName                | PassWord      | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name | Last Name | Mobile No  | Email                   | Enter Registration No | Enter Company Name     | Enter Company Address | Any Other Request? |
      | priyangasiva1@gmail.com | Priyasiva@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga   | sivaraj   | 9344979743 | priyangasiva1@gmail.com |            9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Add bonfire  Add bonfire        |

  Scenario Outline: Verify book hotel incluting GST-Card(debit card-Visa)without Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add the guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User add the GST details "<Enter Registration No>","<Enter Company Name>" and "<Enter Company Address>" and click Next
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552222 | priyanga     | March | 2024 | 123 |
      | Mastercard  | 5555555555554444 | priyanga     | March | 2024 | 123 |
      | Amex        | 5555555555550000 | priyanga     | March | 2024 | 123 |
      | Discover    | 5555555555556666 | priyanga     | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed" and save the orderId
    And User should verify same selected hotel is presend

    Examples: 
      | UserName                | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name    | Last Name   | Mobile No  | Email                   | Enter Registration No | Enter Company Name     | Enter Company Address |
      | priyangasiva1@gmail.com | Priyasairam@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga      | sivaraj     | 9344979743 | priyangasiva1@gmail.com |            9043592058 | Greens Tech OMR Branch | Thoraipakkam          | 

  Scenario Outline: Verify book hotel incluting GST-Card(credit card-Visa)without Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User add GST details "<Enter Registration No>","<Enter Company Name>" and "<Enter Company Address>" and click Next
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552223 | priyanga    | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed" and save the orderId
    And User should verify same selected hotel is presend

    Examples: 
      | UserName                | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name | Last Name  | Mobile No  | Email                   | Enter Registration No | Enter Company Name     | Enter Company Address |
      | priyangasiva1@gmail.com | Priyasairam@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga   |sivaraj     | 9344979743 | priyangasiva1@gmail.com |            9043592058 | Greens Tech OMR Branch | Thoraipakkam          | 

  Scenario Outline: Verify book hotel without GST Card(debit card-Visa)with Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome madhubala"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add the guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User add the special request "<Any Other Request?>"
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552222 | madhu     | March | 2024 | 123 |
      | Mastercard  | 5555555555554444 | madhu     | March | 2024 | 123 |
      | Amex        | 5555555555550000 | madhu     | March | 2024 | 123 |
      | Discover    | 5555555555556666 | madhu     | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed"
    And User should verify same selected hotel is presend

    Examples: 
      | UserName               | PassWord         | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name   | Last Name  | Mobile No   | Email                   | Any Other Request? |
      | priyangasiv1@gmail.com | Priyasiva1@123   | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga     | sivaraj    | 8297006560  | priyangasiva1@gmail.com |      Add bonfire   | 

  Scenario Outline: Verify book hotel without GST-Card(credit card-Visa)without Special request
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome madhubala"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel
    And User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add the guest details "<Select Salutation>","<First Name>","<Last Name>","<Mobile No>" and "<Email>"
    And User enter the payment details,procced with card type "<Cardtype>"
      | Select Card | Card No          | Card Name | Month | Year | Cvv |
      | Visa        | 5555555555552223 | Mani      | March | 2024 | 123 |
    Then User should verify after booking success message "Booking is Confirmed" and save the orderId
    And User should verify same selected hotel is presend

    Examples: 
      | UserName                | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name | Last Name | Mobile No   | Email                   |
      | priyangasiva1@gmail.com | Priyasairam@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | priyanga   | sivaraj   | 8297006560  | priyangasiva1@gmail.com |

  Scenario Outline: Verifying error message in Book hotel page
    Given User is on the OMRBranch hotel page
    When User login "<UserName>","<PassWord>" with Enter key
    Then User should verify success message after login " Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel name and save the name,price
    Then User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User click Next without adding guest details
    And User should verify all error message "Let us know for whom you are booking the hotel","Please select Salutation of the user","Please provide First Name of the user","Please provide Last Name of the user","Please provide Contact Number of the user to ease the communication (if required)" and "Please provide Email ID of the user to ease the communication (if required)"
