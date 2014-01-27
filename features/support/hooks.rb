require "watir-webdriver"

Before do
  # Set browser to use here
  browser_vendor = :firefox

  if browser_vendor == :firefox
    trusted_profile = Selenium::WebDriver::Firefox::Profile.new
    trusted_profile["network.automatic-ntlm-auth.trusted-uris"] = FigNewton.base_url
    @browser = Watir::Browser.new(browser_vendor, :profile => trusted_profile)
  else
    @browser = Watir::Browser.new(browser_vendor)
  end
end

After do |scenario|
  if scenario.failed?
    filename = "ERR-#{@current_page.class}-#{Time.now.strftime("%m-%d-%Y_%H-%M-%S")}.png"
    @current_page.save_screenshot(filename)
    embed(filename, "image/png")
  end

  @browser.close
end