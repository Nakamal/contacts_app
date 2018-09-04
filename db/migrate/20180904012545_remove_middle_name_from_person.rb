class RemoveMiddleNameFromPerson < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :middle_name, :string
  end
end
