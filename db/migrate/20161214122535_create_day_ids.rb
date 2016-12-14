class CreateDayIds < ActiveRecord::Migration
  def change
    create_table :day_ids do |t|

      t.timestamps null: false
    end
  end
end
