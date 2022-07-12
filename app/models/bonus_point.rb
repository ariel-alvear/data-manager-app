class BonusPoint < ApplicationRecord
  belongs_to :league_race
  belongs_to :race_participant

  scope :from_league_race, -> (league_race) { where(league_race_id: league_race) }
end
