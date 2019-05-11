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

  def show
    @security = Security.find(params[:id])
    render json: [@security, @security.taxlots]
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
