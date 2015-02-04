Feature: Product
  In order to know the total price of the beer tab
  As a bartender
  I want to be able to multiply the number of beers with the price

Scenario Outline: Calculate beer price
  Given I am on the calculator page
  When I enter "<beers>" for "Value 1"
  And I enter "<price>" for "Value 2"
  And I press "Product"
  Then I should see the text "<total>"

  Examples:
    | beers | price | total |
    | 2     | 3     | 6     |
    | 1     | 3.5   | 3.5   |
    | 5     | 3.95  | 19.75 |

