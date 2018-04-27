class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.boolean, :employee
      t.string :default
      t.string :false
      t.integer :cash

      t.timestamps
    end
  end
end
