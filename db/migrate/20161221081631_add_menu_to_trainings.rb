class AddMenuToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :menu, :text
    add_column :trainings, :date, :datetime
  end
end
