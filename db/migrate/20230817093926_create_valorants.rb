class CreateValorants < ActiveRecord::Migration[6.1]
  def change
    create_table :valorants do |t|
      t.string :purpose
      t.string :discord_id
      t.string :message
      t.string :role
      t.string :mode
      t.integer :user_id
      t.timestamps
    end
  end
end
