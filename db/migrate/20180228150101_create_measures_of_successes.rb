class CreateMeasuresOfSuccesses < ActiveRecord::Migration
  def change
    create_table :measures_of_successes do |t|

      t.timestamps

    end
  end
end
