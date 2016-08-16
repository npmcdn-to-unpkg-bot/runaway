class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.timestamps :birthday
      t.integer :user_id
      t.integer :track_id
      t.timestamps null: false
    end
  end
end
