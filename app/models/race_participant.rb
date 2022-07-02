class RaceParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :league_race

  scope :from_league_race, -> (league_race) { where(league_race_id: league_race) }
end
