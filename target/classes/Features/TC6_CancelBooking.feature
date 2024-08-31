Feature: Verifying OMR Branch Cancel Book hotel Details Automation

  Scenario Outline: Verifying cancel Booking module by changing checkInDate for created orderId
    Given User is on the OMR Branch hotel page
    When User login "<UserName>","<PassWord>" with Enter key
    Then User should verify sucess message after login " Welcome Madhubala"
    When User search hotel "<StateName>","<CityName>","<RoomType>","<CheckIN>","<checkOut>","<NoOfRoom>","<NoOfAduls>" and "<NoOfChild>"
    Then User should verify success message after search hotel "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accept the alert
    Then User should verify success message after accepting the alert "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No >" and "<Email>"
    And User add the GST details "<Enter Registration No>","< Enter Company Name>" and "<Enter Company Name>" and click Next
    And User add the special request "<Any Other Request?>"
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552222 | madhu    | march | 2024 | 123 |
      | Master Card | 5555555555554444 | madhu    | march | 2024 | 123 |
      | Amex        | 5555555555550000 | madhu    | march | 2024 | 123 |
      | Discover    | 5555555555556666 | madhu    | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    Then User should verify same selected Hotel is present
    When User navigate to My Booking page
    Then User should verify the success message "Bookings" after navigate to Booking page
    When User search the orderId with saved orderId
    Then User should verify the same orderId is present successfully
    And User should verify the same Hotel name is present successfully
    And User should verify the same Hotel price is present sucessfully
    When User cancel the booking
    And User accept the alert
    Then User should verify after cancelling success message "Your booking cancelled successfully"

    Examples: 
      | UserName                             | PassWord | StateName  | CityName | RoomType | CheckIN    | CheckOut   | NoOfRoom | NoOfAduls | NoOfChild | Select Salutation | First Name | Last Name | Mobile No  | Email                                | Enter Registration No | Enter Company Name     | Enter Company Address | Any Other Request? |
      | madhubala.govindharajulu98@gmail.com | Leo@1998 | Tamil Nadu | Chennai  | Deluxe   | 2023-09-22 | 2023-09-30 | 2-Two    | 2-Two     |         2 | Ms                | madhubala  | G         | 8297006560 | madhubala.govindharajulu98@gmail.com |                829765 | Greens Tech OMR Branch | Thoraipakkam          | Add bonfire        |

  Scenario Outline: Verifying cancel Booking module by the first orderId(login--->My Account-->Edit-->change CheckInDate)
    Given User is on the OMR Branch hotel page
    When User login "<UserName>","<PassWord>" with Enter key
    Then User should verify sucess message after login " Welcome Madhubala"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings"
    When User cancel the booking of first orderId
    And User accept the alert
    Then User should verify the success message "Your booking cancelled successfully" after modified the checkInDate

    Examples: 
      | UserName                             | PassWord |
      | madhubala.govindharajulu98@gmail.com | Leo@1998 |

  Scenario Outline: Verifying cancel Booking module by cancelling the order by old orderId(login--->My Account-->Edit-->change CheckInDate)
    Given User is on the OMR Branch hotel page
    When User login "<UserName>","<PassWord>" with Enter key
    Then User should verify sucess message after login " Welcome madhubala"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings"
    When User cancel the booking of Existing orderId
    And User accept the alert
    Then User should verify the success message "Your booking cancelled successfully" after modified the checkInDate

    Examples: 
      | userName                             | password     |
      | madhubala.govindharajulu98@gmailcom  |  Leo@1998    |
