class RemoveCountryAndImageColumns < ActiveRecord::Migration[6.1]
  def change
    remove_columns(:destinations, :city_name, :country_name, :image_url)
  end
end
