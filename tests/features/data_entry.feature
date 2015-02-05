Feature: Data entry
  In order to ensure optimal working conditions for our data entry personnel
  As a usability expert for the Calculator project
  I want users to be able to submit forms with empty fields

Scenario Outline: Submit empty fields
  Given I am on the calculator page
  When I enter "1" for "Value 1"
  And I press "<operation>"
  Then I should not see "required"
  Given I am on the calculator page
  When I enter "1" for "Value 2"
  And I press "<operation>"
  Then I should not see "required"

  Examples:
    | operation   |
    | Sum         |
    | Product     |
    | Division    |
    | Subtraction |
