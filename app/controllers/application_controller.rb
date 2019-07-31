class ApplicationController < ActionController::API

  def iex_client
    Rails.application.config.iex_client
  end
end
