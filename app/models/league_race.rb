class LeagueRace < ApplicationRecord
  belongs_to :race_track
  belongs_to :league

  scope :from_league, -> (league) { where(league_id: league) }
end
