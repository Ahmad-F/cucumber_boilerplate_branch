class ImpersonationPage
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
  def impersonate(field, value)
    self.send("#{field.downcase}=", value)
    self.login
  end
end
