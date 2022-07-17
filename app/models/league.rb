class League < ApplicationRecord
  has_many :league_participants
  accepts_nested_attributes_for :league_participants, allow_destroy: true
end
