class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :static_team_id
      t.string :full_name
      t.string :team_code
      t.string :city_name
      t.string :name_short
      t.string :league
      t.string :division
      t.string :division_full
      t.string :venue_name
      t.string :state
    end
  end
end
