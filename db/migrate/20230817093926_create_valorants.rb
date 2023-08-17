class CreateValorants < ActiveRecord::Migration[6.1]
  def change
    create_table :valorants do |t|
      t.string :purpose
      t.integer :valorant_id
      t.integer :discord_id
      t.string :message
      t.string :role
      t.string :mode
      t.timestamps
    end
  end
end
