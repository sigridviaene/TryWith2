class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
