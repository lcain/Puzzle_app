class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.text :image
      t.integer :x_cor
      t.integer :y_cor
      t.integer :map_id
      t.timestamps
    end
  end
end
