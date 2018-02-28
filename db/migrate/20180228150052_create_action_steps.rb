class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.string :description
      t.string :specifics_of_implementation
      t.integer :resource_id
      t.integer :measure_id

      t.timestamps

    end
  end
end
