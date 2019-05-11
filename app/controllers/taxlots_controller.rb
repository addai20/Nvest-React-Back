class TaxlotsController < ApplicationController

  def index
    @taxlots = Taxlot.all
    # byebug
    render json: @taxlots
  end

  def show
    @taxlot = Taxlot.all.find(params[:id])
    render json: @taxlot
  end

  def create
    @taxlot = Taxlot.create(strong_params)
    render json: @taxlot
  end

  private

  def strong_params
    params.permit(:taxlot).require(
      :account_id,
      :security_id,
      :quantity,
      :price
    )
  end
end


# t.integer :account_id
# t.integer :security_id
# t.integer :quantity
# t.integer :price
