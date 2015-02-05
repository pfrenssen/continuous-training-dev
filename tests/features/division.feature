Feature: Division
  In order to know what everybody needs to pay
  As the organizer of the Next Europa International Wine Competition
  I want to be able to divide the total price by the number of participants
 
Scenario Outline: Calculate attendance fee
  Given I am on the calculator page
  When I enter "<total>" for "Value 1"
  And I enter "<participants>" for "Value 2"
  And I press "Division"
  Then I should see the text "<fee>"
 
  Examples:
    | total | participants | fee  |
    | 125   | 5            | 25   |
    | 84.15 | 9            | 9.35 |
    | 95.88 | 12           | 7.99 |
