class ComparisonToolPage
  include PageObject

  text_field(:curve_date, :id => "curveDate")
  text_field(:sponsor, :id => "Sponsor")
  div(:calculate, :id => "comparisonSubmit")
  link(:title_bar, :id => "columnChooser_ComparisonToolResults")
  image(:calculating, :src => "../../img/newweb/chathamdirect-loadingbar.gif")

  def compare_transactions(curve_date, sponsor)
    self.send("curve_date=", curve_date)
    self.send("sponsor=", sponsor)
    curve_date_element.click
    sleep 1
    calculate_element.click
  end
end