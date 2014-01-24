RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.error_messages.include? message
  end

  failure_message_for_should do |page|
    "Expected '#{page.error_messages}' to include '#{message}'"
  end

  failure_message_for_should_not do |page|
    "Expected '#{page.error_messages}' to not include '#{message}'"
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.success_message.include? message
  end

  failure_message_for_should do |page|
    "Expected '#{page.success_message}' to include '#{message}'"
  end

  failure_message_for_should_not do |page|
    "Expected '#{page.success_message}' to not include '#{message}'"
  end
end



RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.success_message.include? message
  end

  failure_message_for_should do |page|
    "Expected '#{page.success_message}' to include '#{message}'"
  end

  failure_message_for_should_not do |page|
    "Expected '#{page.success_message}' to not include '#{message}'"
  end
end

