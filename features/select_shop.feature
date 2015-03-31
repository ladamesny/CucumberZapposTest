Feature: Select a shop
  As a customer
  I would like to select a shop at the start of my search
  Who found a shoe of interest

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
