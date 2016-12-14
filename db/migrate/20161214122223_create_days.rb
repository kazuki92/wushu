class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.datetime    :day_id
      t.text        :train
      t.timestamps
    end
  end
end
