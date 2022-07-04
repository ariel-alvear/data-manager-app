class LeagueRace < ApplicationRecord
  belongs_to :race_track
  belongs_to :league
  has_many :race_participants
  accepts_nested_attributes_for :race_participants, allow_destroy: true

  scope :from_league, -> (league) { where(league_id: league) }
end
