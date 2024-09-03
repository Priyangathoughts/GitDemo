Feature: Verifying OMR Branch Hotel Select Hotel Automation
@SelectHotel
  Scenario Outline: Verifying select hotel and navigate to book hotel upon accepting the alert
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome Hemamalini"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel name and save the hotel name and price
    And User accept the hotel booking alert
    Then User should verify success message after accept the hotel booking alert "Book Hotel"

    Examples: 
     | UserName                  | PassWord       | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | malinikandeeban@gmail.com | Hemacandy@1602 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |

  Scenario Outline: Verifying select hotel and navigate to book hotel upon dismiss the alert
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome Hemamalini"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel name and save the hotel name and price
    And User cancel the hotel booking alert
    Then User should verify success message after cancel the hotel booking alert "Select Hotel"

   Examples: 
     | UserName                  | PassWord       | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | malinikandeeban@gmail.com | Hemacandy@1602 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |

Scenario Outline: Verifying hotel price listed in ascending order
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome Hemamalini"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User click the Price low to high radio button
    Then User should verify all the hotel price listed in ascending order

    Examples: 
     | UserName                  | PassWord       | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | malinikandeeban@gmail.com | Hemacandy@1602 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |

  Scenario Outline: Verifying hotel name listed in descending order
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome Hemamalini"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User click the name Descending radio button
    Then User should verify all the hotel name listed in descending order

    Examples: 
     | UserName                  | PassWord       | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | malinikandeeban@gmail.com | Hemacandy@1602 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |
      