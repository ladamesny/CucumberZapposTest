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
  else
    click_link(link)
  end
end

When(/^the shoe (#{CAPTURE_MULTIPLE_WORDS}) in (#{CAPTURE_MULTIPLE_WORDS}) by (#{CAPTURE_MULTIPLE_WORDS}) is clicked$/) do |link, color, brand|
  @color = color
  click_link(link, href: href_shoe(link, color, brand))
end


Then(/^fill out form to notify me at (#{CAPTURE_MULTIPLE_WORDS}) when a (#{CAPTURE_MULTIPLE_WORDS}) size (#{CAPTURE_MULTIPLE_WORDS}) with (#{CAPTURE_MULTIPLE_WORDS}) width becomes available$/) do | email, color, size, width|
  new_window = windows.last
  page.within_window new_window do
    fill_in('Your Email:', with: email)
    select(color, from: 'styleId')
    # select(size, from: 'dimensionValueIds')
    # select(width, from: 'dimensionValueIds')
    click_button('Notify Me!')
  end
end
