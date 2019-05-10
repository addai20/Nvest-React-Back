class CreateTaxlots < ActiveRecord::Migration[5.2]
  def change
    create_table :taxlots do |t|
      t.integer :account_id
      t.integer :security_id
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
