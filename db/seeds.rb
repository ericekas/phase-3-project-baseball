require 'json'

Team.destroy_all

# Create all team objects

puts "Seeding teams..."

teams_json = File.read "db/mlb-teams.json"
teams_hash = JSON.parse(teams_json)

teams_hash['all_data'].each do |team|

    Team.create(
        static_team_id: team["team_id"],
        full_name: team["name_display_long"],
        team_code: team["bis_team_code"],
        city_name: team["name_display_short"],
        name_short: team["name_display_brief"],
        league: team["league"],
        division: team["division_abbrev"],
        division_full: team["division_full"],
        venue_name: team["venue_short"],
        state: team["address_state"]
        )

end

#Create all player objects

puts "Seeding players..."





puts "✅ Done seeding!"
