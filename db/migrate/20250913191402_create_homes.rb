class CreateHomes < ActiveRecord::Migration[8.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.decimal :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
