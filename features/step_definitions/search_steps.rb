
Given(/^I am on the google home page$/) do
  puts  visit "http://www.google.com"
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
fill_in arg1, with: arg2
click_button "Search"
end

Then(/^I should see "([^"]*)"$/) do |arg1|
page.should have_content arg1
end

Given(/^User is on the google home page$/) do
  puts  visit "http://www.google.com"
end

When(/^User  fills in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
  click_button "Search"
end

Then(/^User should not see "([^"]*)"$/) do |arg1|
  page.should have_no_content arg1
end
