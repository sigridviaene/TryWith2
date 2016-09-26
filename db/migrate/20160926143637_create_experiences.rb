class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :status
      t.string :description
      t.string :title
      t.string :city
      t.float :latitude
      t.float :longitude
      t.datetime :startexperience
      t.datetime :stopexperience
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
