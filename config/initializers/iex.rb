Rails.application.configure do
  # config.publishable_token = ENV['IEX_API_TOKEN'] # defaults to ENV['IEX_API_PUBLISHABLE_TOKEN']
  config.iex_client = IEX::Api::Client.new(publishable_token: ENV['IEX_API_TOKEN'])
end
