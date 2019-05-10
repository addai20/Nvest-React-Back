class InvestorsController < ApplicationController

  def new
    # render json: Investor.new(strong_params)
    @investor = Investor.new(strong_params)
    render json: @investor
  end

  def create
    @investor = Investor.create(strong_params)
    render json: @investor

  end

  def show
    render json: Investor.find(params[:id])
  end

  private

  def strong_params
    params.require(:investor).permit(
      :firstName,
      :lastName,
      :un,
      :pw,
      :dob,
      :available_cash,
      :risk_tolerance,
      :sectors,
    )
  end

end
