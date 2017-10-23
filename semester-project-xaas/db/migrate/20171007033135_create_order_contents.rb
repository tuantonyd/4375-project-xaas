class CreateOrderContents < ActiveRecord::Migration[5.1]
  def change
    create_table :order_contents do |t|
      t.references :order, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
