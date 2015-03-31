Given(/^I go to the Zappo's homepage$/) do
  visit('/zappos')
end

Then(/^I should be sent to the (#{CAPTURE_SHOP_TYPE}) page$/) do |type_name|
  expect(page).to have_content(type_name)
end

Then(/^I should be on the (#{CAPTURE_MULTIPLE_WORDS}) page$/) do |shoe_name|
  expect(page).to have_content(shoe_name)
end

Then(/^I should see a prompt to confirm size and width$/) do
  expect(page).to have_content("Please select a size")
  expect(page).to have_content("Please select a width")
end
