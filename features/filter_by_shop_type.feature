Feature: Filter by shop type
  As a guest user
  In order to see merchandise for a specific sub-category
  I want to be able to go to the specific sub-category of interest

  Background:
    Given I go to the Zappo's homepage

  Scenario Outline: I select shop type filter
    When I select <shop_type> filter under <shop_name>
    Then I should be sent to the <shop_type> page

  Examples:
  | shop_type | shop_name    |
  | Clothing  | Shop Women's |
  | Shoes     | Shop Women's |
  | Clothing  | Shop Men's   |
  | Shoes     | Shop Men's   |

