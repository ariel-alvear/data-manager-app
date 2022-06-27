class ScoreSystem < ApplicationRecord
  has_many :points_for_positions
  accepts_nested_attributes_for :points_for_positions, allow_destroy: true
end
