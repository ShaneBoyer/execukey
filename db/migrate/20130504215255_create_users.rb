class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password
      t.string :phone
      t.boolean :confirmed
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :lock_version
      t.references :company

      t.timestamps
    end
    add_index :users, :company_id
  end
end
