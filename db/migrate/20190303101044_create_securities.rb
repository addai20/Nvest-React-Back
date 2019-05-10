class CreateSecurities < ActiveRecord::Migration[5.2]
  def change
    create_table :securities do |t|
      t.string :symbol
      t.string :asset_type
      t.string :sector

      t.timestamps
    end
  end
end

  # These are the properties of taxlots should have
# t.integer :cost_basis
# t.integer :qty
# t.string :buy_date
# t.string :sell_date

# ideally tax lots should work like below
#
# taxlots: [
#   [:cost_basis, :qty, :buy_date, :sell_date]
#
# ]
