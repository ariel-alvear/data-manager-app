class RaceParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :league_race
  has_many :sanctions
  has_many :bonus_points

  scope :from_league_race, -> (league_race) { where(league_race_id: league_race) }

  def sanction_points
    sanctions.pluck(:penalized_points).compact.sum
  end

  def total_race_points
    score - sanction_points
  end
end
