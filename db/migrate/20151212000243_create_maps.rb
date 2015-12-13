class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.text :name
      t.text :image
      t.timestamps
    end
  end
end
