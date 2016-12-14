class CreateDayUsers < ActiveRecord::Migration
  def change
    create_table :day_users do |t|

      t.timestamps null: false
    end
  end
end
