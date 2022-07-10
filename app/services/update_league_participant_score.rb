class UpdateLeagueParticipantScore
  def initialize(league_race)
    @league_race = league_race
    # @league_participants = LeagueParticipant.where(league_id: @league_race.league_id)
  end

  def execute
    @league_race.race_participants.each do |race_participant|
      league_participant = LeagueParticipant.where(user_id: race_participant.user_id)
                                            .where(league_id: @league_race.league_id)
      if league_participant[0].score.nil?
        league_participant[0].update(score: race_participant.score)
      else
        league_participant[0].update(score: (league_participant[0].score += race_participant.score))
      end
    end
  end
end
