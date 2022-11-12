class AddDestinationNameColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :destination_name, :string
  end
end
