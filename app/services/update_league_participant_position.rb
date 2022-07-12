class UpdateLeagueParticipantPosition < ApplicationService
  def initialize(league_race)
    @league_race = league_race
  end

  def call
    i = 1
    @league_race.league.league_participants.order(score: :desc).each do |league_participant|
      league_participant.update(position: i)
      i += 1
    end
  end
end
