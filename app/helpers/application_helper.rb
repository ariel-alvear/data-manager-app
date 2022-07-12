module ApplicationHelper

  # Retorna arreglo con id de jugador y id de participante de carrera
  # array = [["gamer_id1", race_participant_id1], ["gamer_id2", race_participant_id2]]
  def league_race_name_and_ids(league_race_id)
    LeagueRace.find(league_race_id).race_participants.map{|p| [p.user.gamer_id, p.id]}
  end
end
