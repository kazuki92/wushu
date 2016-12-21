class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.text  :menu
      t.datetime  :day
      t.timestamps null: false
    end
  end
end
