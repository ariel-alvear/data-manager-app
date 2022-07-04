class PointsForPosition < ApplicationRecord
  belongs_to :score_system

  scope :from_score_system, -> (score_system) { where(score_system_id: score_system) }
end
