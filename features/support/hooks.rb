require "watir-webdriver"

Before do
  trusted_profile = Selenium::WebDriver::Firefox::Profile.new
  trusted_profile["network.automatic-ntlm-auth.trusted-uris"] = "extranetdev.chathamfinancial.com"

  @browser = Watir::Browser.new(:firefox, :profile => trusted_profile)
end

After do |scenario|
  if scenario.failed?
    filename = "error-#{@current_page.class}-#{Time.now.strftime("%Y-%m-%d_%H-%M-%S")}.png"
    @current_page.save_screenshot(filename)
    embed(filename, 'image/png')
  end

  @browser.close
end
