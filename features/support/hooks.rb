require "watir-webdriver"

Before do
  debug_profile = Selenium::WebDriver::Firefox::Profile.new
  debug_profile["network.automatic-ntlm-auth.trusted-uris"] = "extranetdev.chathamfinancial.com"

  @browser = Watir::Browser.new(:firefox, :profile => debug_profile)
end

After do |scenario|
  if scenario.failed?
    time_stamp = Time.now.strftime("%Y_%m_%d_%H_%M")
    filename = "error-#{@current_page.class}-#{time_stamp}.png"
    @current_page.save_screenshot(filename)
    embed(filename, 'image/png')
  end

  @browser.close
end
