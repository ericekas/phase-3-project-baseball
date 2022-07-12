class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name_first_last
      t.string :name_last_first
      t.integer :team_id
      t.integer :static_player_id
      t.integer :jersey_number
      t.integer :height_feet
      t.integer :height_inches
      t.string :throws
      t.string :bats
      t.string :primary_position
      t.string :position_desig
      t.integer :weight
    end
  end
end
