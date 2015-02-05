Feature: Formatting of financial data
  In order to adhere to the Financial Data Formatting Guidelines
  As a chief financial officer of the European Commission
  I need to ensure that all financial data is formatted in a consistent manner

Scenario Outline: Check output is rounded to two decimal points
  Given I am on the calculator page
  When I enter "<value 1>" for "Value 1"
  And I enter "<value 2>" for "Value 2"
  And I press "<operation>"
  Then I should see the text "<result>"

  Examples:
    | value 1 | value 2 | operation   | result |
    | 11      | 1.001   | Sum         | 12     |
    | 1.248   | 1       | Sum         | 2.25   |
    | -1.248  | -1      | Sum         | -2.25  |
    | 1.3456  | 235     | Product     | 316.22 |
    | 3.564   | -3      | Product     | -10.69 |
    | 3.566   | -3      | Product     | -10.7  |
    | 100     | 3       | Division    | 33.33  |
    | 200     | -3      | Division    | -66.67 |
    | 500     | 2       | Division    | 250    |
    | 200     | -3.976  | Subtraction | 203.98 |
    | 3.5342  | 23      | Subtraction | -19.47 |
    | 800.001 | 799     | Subtraction | 1      |
