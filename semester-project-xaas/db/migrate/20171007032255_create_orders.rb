class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.numeric :total
      t.string :notes
      t.references :customer
      t.references :order_status, foreign_key: true
      t.string :address
      t.string :city
      t.references :state
      t.references :country
      t.integer :zip
      t.string :stripe_key
      t.timestamps
    end
  end
end
