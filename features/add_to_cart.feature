Feature: Add shoes to cart
  As a guest user
  Who selected a shoe to purchase
  I would like to add the shoe to my cart

  Background:
    Given I go to the Zappo's homepage
    And I select Shoes filter under Shop Men's
    And I click Boots
    And I select Keen Utility Brand from sort menu
    And the shoe Pittsburgh Boot in Black Yellow by Keen Utility is clicked
    When I click Add to Cart
    Then I should see a prompt to confirm size and width

  Scenario: Add a shoe to cart that is not available
    Then I click Don't see your size?
    And fill out Notify Me form
