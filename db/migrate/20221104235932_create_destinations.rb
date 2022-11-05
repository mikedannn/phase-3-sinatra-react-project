class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :city_name
      t.string :country_name
      t.string :image_url
    end
  end
end
