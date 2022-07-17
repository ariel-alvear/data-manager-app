module ApplicationHelper

  # Retorna arreglo con id de jugador y id de participante de carrera
  # array = [["gamer_id1", race_participant_id1], ["gamer_id2", race_participant_id2]]
  def league_race_name_and_ids(league_race_id)
    RaceParticipant.where(league_race_id: league_race_id).map{|p| [p.user.gamer_id, p.id]}
  end

  def f1_race_positions
    ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', 'DNF']
  end
end
