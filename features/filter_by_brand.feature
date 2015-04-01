Feature: Filter by brand
  In order to find items available by a specific brand
  As a guest user
  I want to be able to filter by brand of shoe

  Scenario Outline: Select Brand under

    Given I go to the Zappo's homepage
    And I select <sub_menu> filter under <shop_name>
    And I click <article_type>
    When I select <brand_name> Brand from sort menu
    Then I should be sent to the <brand_name> page

      Examples:
      | shop_name       | article_type | sub_menu | brand_name   |
      | Shop Men's      | Boots        | Shoes    | Keen Utility |
      | Shop Women's    | Loafers      | Shoes    | Clarks       |
