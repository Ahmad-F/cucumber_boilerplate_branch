class InternalLinksPage
  include PageObject

  def assert_loaded
    raise "Internal links page not accessible" unless @browser.url == "#{FigNewton.base_url}/internal"
  end

  link(:valuation_control_report, :id => "ctl00_BodyContentPlaceHolder_ValuationControlReportHyperLink")
  link(:comparison_tool, :id => "ctl00_BodyContentPlaceHolder_ComparisonToolHyperLink")
end