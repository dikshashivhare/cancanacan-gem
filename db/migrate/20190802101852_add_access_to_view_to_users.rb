class AddAccessToViewToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :access_to_view, :boolean
  end
end
