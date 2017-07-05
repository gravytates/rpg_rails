class EditUsersDefaults < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :admin, :boolean, default: false
    change_column :users, :attack_level, :integer, default: 0
  end
end
