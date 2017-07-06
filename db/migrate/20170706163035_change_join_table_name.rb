class ChangeJoinTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :items_users, :user_items
  end
end
