class ValuationControlReport
  include PageObject

  span(:find_records, :class => "ui-icon ui-icon-search")
  text_field(:as_of_date, :class => "field0 hasDatepicker vdata")
  span(:find_date, :class => "ui-icon ui-icon-search")
  div(:loading, :id => "load_resultsGrid")

  def run_report_for_date(date)
    find_records_element.click
    self.send("as_of_date=", date)
    find_date_element.click
  end
end