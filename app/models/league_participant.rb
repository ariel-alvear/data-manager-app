class LeagueParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :league

  scope :from_league, -> (league_id) { where(league_id: league_id) }
end
