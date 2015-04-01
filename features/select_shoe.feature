Feature: Select a shoe
  As a guest user
  In order to get more information about a shoe
  I want to select a shoe and see information about the shoe

  Scenario Outline: Select a shoe for viewing

    Given I go to the Zappo's homepage
    And I select <sub_menu> filter under <shop_name>
    And I click <article_type>
    When I select <brand_name> Brand from sort menu
    And the shoe <article_name> in <color> by <brand_name> is clicked
    Then I should be on the <article_name> page

      Examples:
      | shop_name       | article_type | sub_menu | brand_name   | article_name    | color            |
      | Shop Men's      | Boots        | Shoes    | Keen Utility | Pittsburgh Boot | Black Yellow     |
      | Shop Women's    | Loafers      | Shoes    | Clarks       | Haley Stork     | Mushroom Nubuck  |
