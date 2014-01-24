When(/^I click on Internal Links link$/) do
  on(ImpersonationPage).internal_links
end

When(/^I run a Valuation Control Report$/) do
  on(ImpersonationPage).internal_links
  on(InternalLinksPage).valuation_control_report
  on(ValuationControlReport).run_report_for_date("15-Jan-2014\n")
end

When(/^I run a valuation comparison on the comparison tool page$/) do
  on(ImpersonationPage).internal_links
  on(InternalLinksPage).comparison_tool
  on(ComparisonToolPage).compare_transactions('15-Jan-2013', 'QAAutoCompass')
end

Then(/^I should see the Valuation Summary page$/) do
  on(ValuationSummaryPage).assert_loaded
end

Then(/^I should see the Internal links page$/) do
  on(InternalLinksPage).assert_loaded
end

Then(/^I should see an OIS valuation$/) do
  on(ComparisonToolPage).calculating_element.when_not_visible(timeout = 30)
  on(ComparisonToolPage).text.should include "OIS Value"
end

Then(/^I should see a CRN/) do
  on(ValuationControlReport).loading_element.when_not_visible(timeout = 30)
  on(ValuationControlReport).text.should include "CFPROD2AT2009071302"
end

#Treatments
When(/^I click the accounting treatment tab$/) do
  sleep 5
  sleep 5
  on(ValuationSummaryPage).acct_nav
  on(ValuationSummaryPage).acct_treatments
  #on(ValuationSummaryPage).acct_treatments
end

Then(/^I should see the accounting workflow tab$/) do
  @current_page.text.should include "Accounting Workflow"
end