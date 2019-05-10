class AccountsController < ApplicationController

  def new
    @account = Account.new(strong_params)
    render json: @account
  end
  def index
    @accounts = Account.all
    render json: Account.all
  end

  def show
    render json: Account.find(params[:id])
  end

private

  def strong_params
    params.require(:account).permit(
      :account_id,
      :uid,
      :name,
      :account_type,
      :assets,
      :orders,
      :beneficiaries

    )
  end

end


class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :account_id
      t.integer :uid
      t.string :name
      t.string :account_type
      t.integer :assets, :array => true, :default => '{}'
      # assets array will hold onto all the assets of an account.. may not be needed though
      t.integer :orders, :array => true, :default => '{}'
      # orders array could simply hold the id's of a bought or sold tax lot

      t.string :beneficiaries, :array => true, :default => '{}'

      t.timestamps
    end
  end
end

# orders are security sales and security purchases
# orders wil have a type, which will be either a buy or sell
