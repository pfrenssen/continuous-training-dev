Feature: Validation
  In order to ensure correct operation
  As a product owner of the awesome calculator
  I want user to be warned if non-numeric values are entered

Scenario Outline: Validate correct input
  Given I am on the calculator page
  When I enter "<value>" for "<field>"
  And I press "<operation>"
  Then I should not see the error message "Only enter numeric values."

  Examples:
    | value | field   | operation   |
    | -999  | Value 1 | Sum         |
    | 999   | Value 1 | Product     |
    | 0     | Value 1 | Division    |
    | 1     | Value 2 | Subtraction |
    | -1    | Value 2 | Sum         |
    | 1234  | Value 2 | Product     |

Scenario Outline: Validate incorrect input
  Given I am on the calculator page
  When I enter "<value>" for "<field>"
  And I press "<operation>"
  Then I should see the error message "Only enter numeric values."
 
  Examples:
    | value | field   | operation   |
    | -999a | Value 1 | Sum         |
    | #     | Value 1 | Product     |
    | <a>   | Value 1 | Division    |
    | ☢     | Value 2 | Subtraction |
    | -1.1. | Value 2 | Sum         |
    | 2+2   | Value 2 | Product     |
