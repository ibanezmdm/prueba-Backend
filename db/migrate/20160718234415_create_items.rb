class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_size
      t.string :description
      t.integer :serial_number
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :items, :serial_number, unique: true
  end
end
