class ActionStep < ApplicationRecord
  # Direct associations

  has_many   :users,
             :foreign_key => "action_id"

  # Indirect associations

  # Validations

end
