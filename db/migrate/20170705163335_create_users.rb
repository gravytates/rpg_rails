class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.boolean :admin
      t.integer :attack_level

      t.timestamps
    end
  end
end
