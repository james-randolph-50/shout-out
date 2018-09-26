class Shout < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
=======
    has_many :comments, dependent: :destroy
>>>>>>> 294d7336c24df0edd0ccf35a7cee0ccca84a468e
end
