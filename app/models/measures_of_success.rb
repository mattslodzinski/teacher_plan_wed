class MeasuresOfSuccess < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :foreign_key => "measure_id"

  # Indirect associations

  # Validations

end
