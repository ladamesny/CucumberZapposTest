Feature: Notify me when item is available
  In order to be notified when a specific item becomes available
  As a guest user
  I want to submit my email with size and color of shoe to be notified when available


  Scenario Outline: Add a shoe to cart that is not available
    Given I go to the Zappo's homepage
    And I select <sub_menu> filter under <shop_name>
    And I click <article_type>
    And I select <brand_name> Brand from sort menu
    And the shoe <article_name> in <color> by <brand_name> is clicked
    When I click Add to Cart
    Then I should see a prompt to confirm size and width
    Then I click Don't see your size?
    And fill out form to notify me at <email> when a <color_choice> size <size> with <width> width becomes available

      Examples:
      | shop_name    | article_type | sub_menu  | brand_name   | article_name    | color           | color_choice    | size | width        | email             |
      | Shop Men's   | Boots        | Shoes     | Keen Utility | Pittsburgh Boot | Black Yellow    | Black/Yellow    | 8.5  | EE - Wide    | larry@example.com |
      | Shop Women's | Loafers      | Shoes     | Clarks       | Haley Stork     | Mushroom Nubuck | Mushroom Nubuck | 5.5  | 2A - Narrow  | marie@example.com |
