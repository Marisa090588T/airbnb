class AddCoordinatesToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :latitude, :float
    add_column :accommodations, :longitude, :float
  end
end
