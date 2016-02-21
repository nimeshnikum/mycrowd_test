class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.string :application_type, length: 20
      t.text :instructions
      t.decimal :bounty
      t.string :state, length: 20

      t.timestamps null: false
    end
  end
end
