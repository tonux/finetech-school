class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  TYPE_USER = {
    admin: 1,
    professeur: 2,
    eleve: 3,
    autres: 4 
  }.freeze

 enum type_user: TYPE_USER
end
