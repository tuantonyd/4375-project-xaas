class CreateImageMappers < ActiveRecord::Migration[5.1]
  def change
    create_table :image_mappers do |t|
      t.references :item, foreign_key: true
      t.string :file_name

      t.timestamps
    end
  end
end
