class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
         has_many :shouts
=======
      has_many :shouts
>>>>>>> 294d7336c24df0edd0ccf35a7cee0ccca84a468e
end
