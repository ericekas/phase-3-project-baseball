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

  post '/players' do
    players = Player.create(name_first_last: params[:name_first_last], 
    static_player_id: params[:static_player_id],
    team_id: params[:team_id])
    # players.to_json

  end
  
  delete'/games/:id' do
    games = Game.find(params[:id])
    games.destroy
    games.to_json
  end
end