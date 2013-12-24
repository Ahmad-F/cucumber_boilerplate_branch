Given(/^I am on the impersonation page$/) do
  visit(HelloWorldPage)
end

When(/^I impersonate the "(.*)" "(.*)"$/) do |type, value|
  on(HelloWorldPage).impersonate(type, value)
end

Then(/^I should see the Valuation Summary Page$/) do
  @browser.url.should == "#{FigNewton.base_url}/mvc/valuation.cfc/valuationsummary"
end
