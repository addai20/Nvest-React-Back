class InvestorsController < ApplicationController

  def index
    @investors = Investor.all
    render json: @investors
  end

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
    @investor = Investor.find(params[:id])
    @accounts = @investor.accounts.map { |acc| [acc, acc.securities, acc.taxlots]}

    #initialize an empty array for all stocks
    # @stocks = []



    render json: [@investor, @accounts]


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
