class AddDetailsToExperience < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :address, :string
    add_column :experiences, :locatie, :string
    add_column :experiences, :url, :string
  end
end
