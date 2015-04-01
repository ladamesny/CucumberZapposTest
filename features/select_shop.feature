Feature: Select a shop
  As a guest user
  In order to see merchandise for a specific category
  I want to be able to go to the specific shop page from the home page

  Background:
    Given I go to the Zappo's homepage

  Scenario Outline: Select men's shop

    When I click <shop_name>
    Then I should be sent to the <type_name> page

  Examples:
  | shop_name       | type_name |
  | Shop Women's    | Women's   |
  | Shop Men's      | Men's     |
  | Shop Kids'      | Kids'     |
