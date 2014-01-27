class AccountingTreatmentsPage
  include PageObject

  def assert_loaded
    raise "Valuation Summary page not accessible" unless @browser.url == "#{FigNewton.base_url}/mvc/Accounting/Treatment.cfc/TreatmentWorkflow"
  end
end