class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :location
      t.boolean :available
      t.string :property_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
