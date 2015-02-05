Feature: Subtraction
  In order to know the efficiency of our photovoltaic panels
  As a promoter of the solar power initiative
  I want to be able to calculate the total savings on our electricity bill

Scenario Outline: Perform subtractions
  Given I am on the calculator page
  When I enter "<original>" for "Value 1"
  And I enter "<current>" for "Value 2"
  And I press "Subtraction"
  Then I should see the text "<saving>"

  Examples:
    | original | current | saving  |
    | 10       | 5       | 5       |
    | 500      | -50     | 550     |
    | 15883.56 | 9344.64 | 6538.92 |
