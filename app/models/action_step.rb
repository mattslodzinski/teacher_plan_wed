class ActionStep < ApplicationRecord
  # Direct associations

  belongs_to :measure,
             :class_name => "MeasuresOfSuccess"

  belongs_to :resource,
             :class_name => "ResourceNeeded"

  has_many   :users,
             :foreign_key => "action_id"

  # Indirect associations

  # Validations

end
