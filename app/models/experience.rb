class Experience < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  belongs_to :category
=======
  has_many :categories
>>>>>>> 7301fca250274e629653d6351eea84d24c6829e4
end
