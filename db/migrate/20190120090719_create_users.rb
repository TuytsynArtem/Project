class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :login
      t.string :password
      t.integer :rating
      t.string :awards
      t.string :mail
      t.string :phone_number
      t.string :description
      t.string :country
      t.string :city
      t.boolean :admin

      t.timestamps
    end
  end
end
