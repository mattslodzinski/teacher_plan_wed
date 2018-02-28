class CreateResourceNeededs < ActiveRecord::Migration
  def change
    create_table :resource_neededs do |t|

      t.timestamps

    end
  end
end
