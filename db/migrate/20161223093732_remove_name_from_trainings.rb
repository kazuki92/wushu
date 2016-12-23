class RemoveNameFromTrainings < ActiveRecord::Migration
  def change
    remove_column :trainings, :name, :string
  end
end
