class Etablissement < ApplicationRecord
  belongs_to :directeur, class_name: 'User', foreign_key: 'user_id'

  has_many :levels
end
