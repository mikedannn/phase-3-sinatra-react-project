class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.datetime :date_of_birth
      t.timestamps
    end
  end
end
