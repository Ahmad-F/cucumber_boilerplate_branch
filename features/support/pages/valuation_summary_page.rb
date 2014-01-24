class ValuationSummaryPage
  include PageObject
  include DataMagic

  def assert_loaded
    raise "Valuation Summary page not accessible" unless @browser.url == "#{FigNewton.base_url}/mvc/valuation.cfc/valuationsummary"
  end

  link(:acct_nav, :class => "accountingNav")
  link(:acct_treatments, :text => "Treatments")
end