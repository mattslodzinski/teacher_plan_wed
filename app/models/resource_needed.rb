class ResourceNeeded < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :foreign_key => "resource_id"

  # Indirect associations

  # Validations

end
