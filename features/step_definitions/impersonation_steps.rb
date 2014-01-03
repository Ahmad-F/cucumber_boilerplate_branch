Given(/^I am on the impersonation page$/) do
  visit(ImpersonationPage)
end

When(/^I impersonate the "(.*)" "(.*)"$/) do |field, value|
  on(ImpersonationPage).impersonate(field, value)
end

Then(/^I should see the Valuation Summary Page$/) do
  @browser.url.should == "#{FigNewton.base_url}/mvc/valuation.cfc/valuationsummary"
end
