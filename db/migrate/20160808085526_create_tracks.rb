class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.integer :power
      t.integer :up_meter
      t.integer :user_id
      t.integer :track_id

      t.timestamps null: false
    end
  end
end
