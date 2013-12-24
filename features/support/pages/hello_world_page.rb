class HelloWorldPage
  include PageObject
  include DataMagic

  # Page url
  page_url("#{FigNewton.base_url}/login/impersonation")

  # Page objects
  text_field(:sponsor_code ,:id => "QuickLogInSponsorCodeTextBox")
  text_field(:crn ,:id => "QuickSearchCrnTextBox")
  text_field(:user ,:id => "QuickSearchUserTextBox")
  button(:login, :id => "QuickLogInCFImageButton")

  # Page methods
  def impersonate(type, value)
    self.send(type.to_sym, value)
    self.login
  end
end
