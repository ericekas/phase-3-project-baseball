class CreateGames2 < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_id
      t.integer :home_team_id
      t.string :home_team_abbrev
      t.string :home_team_short
      t.string :home_team_full
      t.integer :away_team_id
      t.string :away_team_abbrev
      t.string :away_team_short
      t.string :away_team_full
      t.string :game_day
      t.datetime :game_date
      t.datetime :game_time_local
    end
  end
end
