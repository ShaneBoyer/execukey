class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.datetime :created_at
      t.string :email
      t.integer :lock_version
      t.datetime :updated_at
      t.string :phone

      t.timestamps
    end
  end
end
