class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  # Add your routes here



  get '/games' do
   "Flatstadium Game Schedule!"
   games = Game.all
   games.to_json
  end
  
  get "/teams" do
    teams = Team.all
    teams.to_json
  end

  get "/teams/:id/games" do
    team = Team.find{ |team| team['static_team_id'] = params['id'] }
    team.games.to_json
  end

  get "/teams/:id/players" do
    team = Team.find{ |team| team['static_team_id'] = params['id'] }
    team.players.to_json
  end

  get "/players" do
    players = Player.all
    players.to_json
  end

end