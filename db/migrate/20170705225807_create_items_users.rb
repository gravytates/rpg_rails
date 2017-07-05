class CreateItemsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :items_users do |t|
      t.integer :item_id
      t.integer :user_id
      t.timestamps
    end
    remove_column :items, :user_id, :integer
  end
end
