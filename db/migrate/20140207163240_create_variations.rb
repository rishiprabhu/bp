class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :name
      t.string :style
      t.integer :product_id
    end

    add_index :variations, :product_id
  end
end
