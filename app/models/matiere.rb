class Matiere < ApplicationRecord
    belongs_to :professeur, class_name: 'User', foreign_key: 'user_id'

end
