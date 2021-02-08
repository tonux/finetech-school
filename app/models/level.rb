class Level < ApplicationRecord
  belongs_to :etablissement

  belongs_to :responsable, class_name: 'User', foreign_key: 'user_id'

end