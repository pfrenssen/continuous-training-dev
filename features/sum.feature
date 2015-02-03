Feature: Sums
  In order to know the total price
  As a salesperson
  I want to be able to calculate the sum of all values

Scenario Outline: Perform sums
  Given I am on the calculator page
  When I enter "<value1>" for "Value 1"
  And I enter "<value2>" for "Value 2"
  And I press "Sum"
  Then I should see the text "<sum>"

  Examples:
    | value1 | value2 |  sum |
    | 1      | 1      |  2   |
    | -1     | 2.2    |  1.2 |
    | 100    | -50    |  50  |
    | 66     | 0      |  66  |
