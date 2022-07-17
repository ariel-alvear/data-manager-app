class LeagueRace < ApplicationRecord
  belongs_to :race_track
  belongs_to :league
  belongs_to :score_system
  has_many :race_participants
  has_many :sanctions
  has_many :bonus_points

  accepts_nested_attributes_for :race_participants, allow_destroy: true

  scope :from_league, -> (league) { where(league_id: league) }
end
