class AddReferencesToExperience < ActiveRecord::Migration[5.0]
  def change
    add_reference :experiences, :category, foreign_key: true
  end
end
