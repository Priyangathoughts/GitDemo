Feature: Verifying OMR Branch Hotel Explore Hotel Automation
  @ChangeBooking
  Scenario Outline: Verifying change Booking module by changing CheckInDate for created OrderId
    Given User is on the OMR Branch Hotel Page
    When User Login "<Username>","<Password>"
    Then User should verify success message after login "Welcome priyanga"
    When User search hotel "<Select State>","<Select City>","<Select Room Type>","<Check-In-Date>","<Check-Out-Date>","<No.Of Room>","<No.Of Adults>" and "<No.Of Children>"
    Then User should verify success message after search hotel "Select Hotel"
    When User select the first hotel name and save the hotel name and price
    And User accept the hotel booking alert
    Then User should verify success message after accept the hotel booking alert "Book Hotel"
    When User add the guest details "<Myself>","<Select Salutation>","<First Name>","<Mobile No.>" and "<Email>"
    And User add the gst details "<Enter Registration No.>","<Enter Company Name>","<Enter Company Address>"
    And User add the special "<Special Request>"
    And User add the payment details,Proceed with card type "<Select Card Type>"
    |Select Card|Card No         |Card Name|Month|Year|CVV
    |VISA       |5555555555552222|priyanga |March|2024|123
    |Master Card|5555555555554444|priyanga |March|2024|123
    |Amex       |5555555555550000|priyanga |March|2024|123
    |Discover   |5555555555556666|priyanga |March|2024|123
    Then User should verify after booking success message "Booking is Confirmed" and the Order id
    And User should verify after booking same hotel name is present "Hotel Hilton"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings" after navigate to the booking page
    When User search the order id with saved order id
    Then User should verify the same order id is present successfully
    And User should verify the same Hotelname is present successfully
    And User should verify the same Hotelprice is present successfully
    When User edit the booking by changing the CheckInDate "<CheckInDate>"
    Then User should verify after editing the CheckInDate success message "Booking updated successfully"
    
    Examples: 
      | Username                  | Password        | Select State | Select City | Select Room Type | Check-In-Date | Check-Out-Date | No.Of Room | No.Of Adults | No.Of Children | Guest Details | Select Salutation | First Name | Last Name | Mobile No. | Email                | Enter Registration No. | Enter Company Name     | Enter Company Address | Special Request | Select Card Type | CheckInDate |
      | priyangasiva1@gmail.com   | Priyasairam@123 | Tamil Nadu   | coimbatore  | Deluxe           | 2023-09-28    | 2023-10-12     | 2-Two      | 2-Two        |              0 | Myself        | Ms.               | priyanga   | sivaraj   | 9344979743 | priyasiva1@gmail.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam          | Late Check-in   | Debit Card       | 2023-09-29  |

  Scenario Outline: Verifying change Booking module by changing CheckInDate for first OrderId
    Given User is on the OMR Branch Hotel Page
    When User Login "<Username>","<Password>"
    Then User should verify success message after login "Welcome priyanga"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings" after navigate to the booking page
    When User modify the first order id by changing the CheckInDate "<CheckInDate>"
    Then User should verify after editing the CheckInDate success message "Booking updated successfully"
    
    Examples: 
      | Username                  | Password        |
      | Priyangasiva1@gmail.com   | Priyasairam@123 |

  @login 
  Scenario Outline: Verifying change Booking module by changing CheckInDate for existing OrderId
    Given User is on the OMR Branch Hotel Page
    When User Login "<Username>","<Password>"
    Then User should verify success message after login "Welcome priyanga"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings" after navigate to the booking page
    When User search the existing order id "<Existing Order>"
    When User modify the existing order id by changing the CheckInDate "<CheckInDate>"
    Then User should verify after editing the CheckInDate success message "Booking updated successfully"
    
    Examples: 
      | Username                  | Password       |Existing Order |
      | priyangasiva1@gmail.com   | Priyasairam@123  |GPBOR93167   |