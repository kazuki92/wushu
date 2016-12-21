class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.text  :neirong
      t.datetime  :date
      t.timestamps null: false
    end
  end
end
