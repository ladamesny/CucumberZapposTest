Feature: Select a shoe

  Scenario: Select a shoe for viewing

    Given I go to the Zappo's homepage
    And I select Shoes filter under Shop Men's
    And I click Boots
    When I select Keen Utility Brand from sort menu
    And the shoe Pittsburgh Boot in Black Yellow by Keen Utility is clicked
    Then I should be on the Pittsburgh Boot page
