class Player < ActiveRecord::Base
    belongs_to :team,
    :primary_key => 'static_player_id'
end