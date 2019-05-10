class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      # t.integer :account_id
      t.integer :investor_id
      t.string :name
      t.string :account_type
      # t.integer :assets, :array => true, :default => '{}'
      # assets array will hold onto all the assets of an account.. may not be needed though
      # t.integer :orders, :array => true, :default => '{}'
      # orders array could simply hold the id's of a bought or sold tax lot

      # t.string :beneficiaries, :array => true, :default => '{}'

      t.timestamps
    end
  end
end

# orders are security sales and security purchases
# orders wil have a type, which will be either a buy or sell
