class SecuritiesController < ApplicationController

  def new
    @security = Security.new(strong_params)
  end

  def index
    @securities = Security.all
    render json: Security.all
  end

  def show
    render json: Security.find(params[:id])
  end

  private

  def strong_params
    params.permit(:security).require(
      # :account_id,
      :sec_id,
      :symbol,
      :asset_type,
      :taxlots,
      :sector
    )
  end
end
