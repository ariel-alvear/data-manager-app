class UpdateLeagueParticipantScore < ApplicationService
  def initialize(league_race)
    @league_race = league_race
  end

  def call
    @league_race.race_participants.each do |race_participant|
      # Buscamos el participante de liga asociado al usuario.
      user_league_participant = LeagueParticipant.where(user_id: race_participant.user_id)
                                            .where(league_id: @league_race.league_id)

      # Retorna un arreglo con las participaciones de carrera dentro de una liga
      user_race_participants = RaceParticipant.includes(:league_race)
                                                    .where(user_id: user_league_participant[0].user_id)
                                                    .where(league_race: { league_id: user_league_participant[0].league_id })

      # Traemos puntaje preliminar (suma de los puntos de participación)                                              
      user_league_preliminary_score = user_race_participants.pluck(:score).compact.sum

      # Traemos los puntos de penalización
      user_sanctions_points = []
      user_race_participants.includes(:sanctions).each do |participant|
        user_sanctions_points << participant.sanctions.pluck(:penalized_points) if participant.sanctions.present?
      end

      # Traemos los puntos extra
      user_league_bonus_points = []
      user_race_participants.includes(:bonus_points).each do |participant|
        user_league_bonus_points << participant.bonus_points.pluck(:points) if participant.bonus_points.present?
      end

      # actualizamos puntaje de liga con la suma de puntos de carrera, restando la suma de puntos de penalización
      user_league_participant[0].update(score: ((user_league_preliminary_score - user_sanctions_points.flatten.sum) + user_league_bonus_points.flatten.sum))
    end
  end
end
