require 'json'

# Team.destroy_all
# Player.destroy_all
# Game.destroy_all

# # Create all team objects

# puts "Seeding teams..."

# teams_json = File.read "db/mlb-teams.json"
# teams_hash = JSON.parse(teams_json)

# teams_hash['all_data'].each do |team|

#     Team.create(
#         static_team_id: team["team_id"],
#         full_name: team["name_display_long"],
#         team_code: team["bis_team_code"],
#         city_name: team["name_display_short"],
#         name_short: team["name_display_brief"],
#         league: team["league"],
#         division: team["division_abbrev"],
#         division_full: team["division_full"],
#         venue_name: team["venue_short"],
#         state: team["address_state"]
#         )

# end

# #Create all player objects

# puts "Seeding players..."

# teams_hash['all_data'].each do |team|

#     players_json = RestClient.get "http://lookup-service-prod.mlb.com/json/named.roster_team_alltime.bam?start_season='2022'&end_season='2022'&team_id='#{team["team_id"]}'"
#     players_hash = JSON.parse(players_json)

#     players_hash["roster_team_alltime"]["queryResults"]["row"].each do |player|
        
#         Player.create(
#             name_first_last: player['name_first_last'],
#             name_last_first: player['name_last_first'],
#             team_id: player['team_id'],
#             static_player_id: player['player_id'],
#             jersey_number: player['jersey_number'],
#             height_feet: player['height_feet'],
#             height_inches: player['height_inches'],
#             throws: player['throws'],
#             bats: player['bats'],
#             primary_position: player['primary_position'],
#             position_desig: player['position_desig'],
#             weight: player['weight']
#         )
#     end
# end

# games_json = RestClient.get "http://lookup-service-prod.mlb.com/json/named.mlb_broadcast_info.bam?src_type='TV'&src_comment='National'&tcid=mm_mlb_schedule&sort_by='game_time_et_asc'&home_away='H'&season='2022'"
# games_hash = JSON.parse(games_json)

# games_hash["mlb_broadcast_info"]["queryResults"]["row"].each do |game|
    
#     Game.create(
#         game_id: game['game_id'],
#         home_team_id: game['home_team_id'],
#         home_team_abbrev: game['home_team_abbrev'],
#         home_team_short: game['home_team_short'],
#         home_team_full: game['home_team_full'],
#         away_team_id: game['away_team_id'],
#         away_team_abbrev: game['away_team_abbrev'],
#         away_team_short: game['away_team_short'],
#         away_team_full: game['away_team_full'],
#         game_day: game['game_day'],
#         game_date: game['game_date'],
#         game_time_local: game['game_time_local']
#     )

# end

Game.each{|game| game.update(home_score: 0, away_score: 0)}


puts "✅ Done seeding!"
