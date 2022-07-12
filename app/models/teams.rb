class Team < ActiveRecord::Base
    has_many :players,
    :primary_key => 'static_team_id',
    :foreign_key => 'team_id'

    has_many :home_games,
    class_name: 'Game',
    :primary_key => 'static_team_id',
    :foreign_key => 'home_team_id'

    has_many :away_games,
    class_name: 'Game',
    :primary_key => 'static_team_id',
    :foreign_key => 'away_team_id'

    def games
        self.home_games + self.away_games
    end
end