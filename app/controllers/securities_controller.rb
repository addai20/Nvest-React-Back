# require 'httparty'
class SecuritiesController < ApplicationController

  def new
    @security = Security.new(strong_params)
  end

  def create
    @security = Security.create(strong_params)
    render json: @security
  end

  def index
    @securities = Security.all
    render json: @securities
  end

  def get_price(stock_symbol)
    #THIS METHOD DOESNT WORK YET

    #Use the fetch method for ruby and
    # Use iex_client method defined in ApplicationController

    # store security in stock_symbol variable
    stock_symbol = @security.symbol

    # pass stock symbol in the into the function
    iex_client.get(stock_symbol)

  end

  def show
    @security = Security.find(params[:id])
    render json: [@security, @security.taxlots]
    # render json: [@security, @security.taxlots, getPrice(@security.symbol)]
  end

  private

  def strong_params
    params.permit(:security).require(
      :account_id,
      :sec_id,
      :symbol,
      :asset_type,
      :taxlots,
      :sector
    )
  end
end
