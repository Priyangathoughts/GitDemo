Feature: Verifying OMR Branch Hotel Explore Hotel Automation

 Scenario Outline: Verifying select hotel by entering all the fields
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"

    Examples: 
     | UserName                  | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | priyangasiva1@gmail.com   | Priyasairam@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |


  Scenario Outline: Verifying select hotel by entering only the mandatory fields
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<CheckIN>","<CheckOut>","<NoOfRoom>" and "<NoOfAduls>"
    Then User should verify success message after search hotel "Select Hotel"

    Examples: 
     | UserName                  | PassWord       | StateName  | CityName | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls |
     | priyangasiva1@gmail.com   |Priyasairam@123 | Tamil Nadu | Chennai  | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |

  Scenario Outline: Verifying hotel name ends with selected room type
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    And User should verify hotel name ends with same room type "<Select Room Type>"

     Examples: 
     | UserName                  | PassWord        | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | priyangasiva1@gmail.com   | Priyasairam@123 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |

  Scenario Outline: Verifying search hotel without entering any field
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User click the search without entering any field
    Then User should verify error messages "Please select state","Please select city","Please select Check-in date","Please select Check-out date","Please select no. of rooms" and "Please select no. of adults"
Examples: 
      | Username                  | Password       | 
      | priyangasiva1@gmail.com   | Priyasairam@123|

  Scenario Outline: Verifying selected room type present in the header
    Given User is on the OMR Branch Hotel Page
    When User Login "<UserName>","<PassWord>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<CheckOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    And User should verify same selected room type is present in header "<Select Room Types>"

    Examples: 
     | UserName                  | PassWord        | StateName  | CityName | RoomType                              | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild |
     | priyangasiva1@gmail.com   | Priyasairam@123 | Tamil Nadu | Chennai  | Standard/Deluxe/Suite/Luxury/Studio   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 |

  