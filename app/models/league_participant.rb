class LeagueParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :league

  scope :from_league, -> (league_id) { where(league_id: league_id) }


  def sanction_points
    points = []
    RaceParticipant.includes(:sanctions, :league_race)
                   .where(league_race: { league_id: self.league_id })
                   .where(user_id: self.user_id)
                   .each do |race_participant|
                    points << race_participant.sanctions.pluck(:penalized_points) if race_participant.sanctions.present?
                  end
    points.flatten.compact.sum
  end

  def preliminary_score
    RaceParticipant.includes(:league_race)
                   .where(league_race: { league_id: self.league_id })
                   .where(user_id: self.user_id)
                   .pluck(:score)
                   .compact
                   .sum
  end
end
