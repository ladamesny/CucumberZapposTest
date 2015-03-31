Feature: Filter by shop type

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

