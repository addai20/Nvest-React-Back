# require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Investor.destroy_all
Taxlot.destroy_all
Security.destroy_all
Account.destroy_all

# class CreateInvestors < ActiveRecord::Migration[5.2]
#   def change
#     create_table :investors do |t|
#       t.string :uid
#       t.string :firstName
#       t.string :lastName
#       t.string :email
#       t.string :un
#       t.string :pw
#       t.string :dob
#       t.integer :available_cash
#       t.string :risk_tolerance
#
#       # below is how you format an array of strings! See the link below in case you forget
#       t.string :sectors, :array => true
#
#       t.timestamps
#     end
#   end
# end
#
# # https://dockyard.com/blog/ruby/2012/09/18/rails-4-sneak-peek-postgresql-array-support


benjamin = Investor.create(firstName: 'Benjamin' , lastName: 'Addai', email: 'ben@nvest.com' , un: 'BigMoneyMoves', pw: 'localhost3000', dob:'03-12-1992', available_cash: 100000, risk_tolerance: 'aggressive', sectors: ["tech", "finance", "medical"]  )

brokerage = Account.create( investor_id: benjamin.id, name: 'NVest Brokerage', account_type: 'brokerage')
ira = Account.create( investor_id: benjamin.id, name: 'NVest IRA', account_type: 'IRA')
ira2 = Account.create( investor_id: benjamin.id, name: 'NVest ESA', account_type: 'ESA')


# aaplTaxLot = Taxlot.create

# arr = [1,2,3,4,5]
# arr1 = []
# arr.each do |ele|
#   arr1 << ele*3
# end
# puts arr1

# def strong_params
#   params.permit(:taxlot).require(
#     :account_id,
#     :security_id,
#     :quantity,
#     :price
#   )



# const sampleStocks = ["aapl", "amzn", "boa", "SNAP", "BRK.B", "baba", "fb", "adbe", "JPM", "F", "T"]
#
# puts (benjamin)

      #CREATES SECURITIES

securitiesArr = [
  {symbol: "aapl", asset_type: "stock", sector: "technology"},
  {symbol: "amzn", asset_type: "stock", sector: "technology"},
  {symbol: "boa", asset_type: "stock", sector: "finance"},
  {symbol: "SNAP", asset_type: "stock", sector: "technology"},
  {symbol: "BRK.B", asset_type: "stock", sector: "technology"},
  {symbol: "baba", asset_type: "stock", sector: "technology"},
  {symbol: "fb", asset_type: "stock", sector: "technology"},
  {symbol: "adbe", asset_type: "stock", sector: "technology"},
  {symbol: "JPM", asset_type: "stock", sector: "finance"},
  {symbol: "F", asset_type: "stock", sector: "technology"},
  {symbol: "T", asset_type: "stock", sector: "telecom"}
]



securitiesArr.each {|security| Security.create(security)}


taxlotsArr = [
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 20, price: 18000},
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 15, price: 120000},
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 100, price: 5500},
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 25, price: 2700},
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 20, price: 18000},
  {account_id: ira.id, security_id: Security.all.sample.id, quantity: 20, price: 18000},

]

taxlotsArr.each {|taxlot| Taxlot.create(taxlot)}
