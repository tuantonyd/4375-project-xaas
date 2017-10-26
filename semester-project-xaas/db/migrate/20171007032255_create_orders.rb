class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.numeric :total
      t.string :notes
      t.string :customer
      t.references :order_status, foreign_key: true
      t.string :address
      t.string :city
      t.references :state
      t.references :country
      t.integer :zip
      t.timestamps
    end
  end
end
