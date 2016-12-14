class CreateDayUsers < ActiveRecord::Migration
  def change
    create_table :day_users do |t|
      t.integer   :dey_id

      t.timestamps 
    end
  end
end
