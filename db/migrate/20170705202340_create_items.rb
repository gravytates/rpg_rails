class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :user_attack_increase
      t.integer :one_time_attack
      t.integer :user_id
      t.timestamps
    end
  end
end
