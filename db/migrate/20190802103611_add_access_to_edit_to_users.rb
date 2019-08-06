class AddAccessToEditToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :access_to_edit, :boolean
  end
end
