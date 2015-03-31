Feature: Filter by brand
  As a customer
  I want to be able to filter by brand of shoe
  So that I can narrow my search by brand of shoe

  Scenario: Select Brand under

    Given I go to the Zappo's homepage
    And I select Shoes filter under Shop Men's
    And I click Boots
    When I select Keen Utility Brand from sort menu
    Then I should be sent to the Keen Utility page
