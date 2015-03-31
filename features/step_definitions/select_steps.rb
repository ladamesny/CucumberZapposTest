When(/^I select (#{CAPTURE_MULTIPLE_WORDS}) Brand from sort menu$/) do | words |
  within("#FCTbrandnamefacetSelect") do
    click_link(words)
  end
end

When(/^I select (#{CAPTURE_MULTIPLE_WORDS}) filter under (#{CAPTURE_SHOP_TYPE})$/) do |type_name, shop_name|
  click_link(type_name, href: href_generator(shop_name, type_name))
end

When(/^I click (#{CAPTURE_MULTIPLE_WORDS})$/) do |link|
  if link == "Add to Cart"
    click_button(link)
  # elsif link == "Don't see your size?"
  #   click_link("#notifyMePopupLink")
  else
    click_link(link)
  end
end

When(/^the shoe (#{CAPTURE_MULTIPLE_WORDS}) in (#{CAPTURE_MULTIPLE_WORDS}) by (#{CAPTURE_MULTIPLE_WORDS}) is clicked$/) do |link, color, brand|
  click_link(link, href: href_shoe(link, color, brand))
end


Then(/^fill out Notify Me form$/) do
  within_window(page.driver.browser.window_handles.last) do
    fill_in('Your Email:', with: 'larry@example.com')
    # select('7', from: 'dimensionValueIds')
    click_button('Notify Me!')
  end
end
