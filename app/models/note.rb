class Note < ApplicationRecord
  belongs_to :matiere
  belongs_to :evaluation
  belongs_to :eleve, class_name: 'User', foreign_key: 'user_id'
end
