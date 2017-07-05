class DropUsers2 < ActiveRecord::Migration[5.1]
  def change
    drop_table :users2s
  end
end
