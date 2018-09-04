class RemoveMiddleNameFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :middle_name, :string
  end
end
