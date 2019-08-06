class AddAccessToAddToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :access_to_add, :boolean
  end
end
