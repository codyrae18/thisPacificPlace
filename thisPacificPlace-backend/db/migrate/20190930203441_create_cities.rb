class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :location_id
      t.string :image_url

      t.timestamps
    end
  end
end
