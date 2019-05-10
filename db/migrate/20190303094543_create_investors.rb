class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      # t.integer :uid, :default => 0
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :un
      t.string :pw
      t.string :dob
      t.integer :available_cash
      t.string :risk_tolerance

      # below is how you format an array of strings! See the link below in case you forget
      t.string :sectors, :array => true

      t.timestamps
    end
  end
end


# https://dockyard.com/blog/ruby/2012/09/18/rails-4-sneak-peek-postgresql-array-support
