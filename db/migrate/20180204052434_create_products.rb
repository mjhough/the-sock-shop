class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :image_url
      t.string :name
      t.integer :inventory, default: 0
    end
  end
end
