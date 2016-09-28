class AddCityToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :city_name, :string
  end
end
