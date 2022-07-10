# Tarea para generar seed de participantes de carrera
namespace :seed do
  desc "Seed race participants"
  task race_participants: :environment do
    if RaceParticipant.count == 0
      RaceParticipant.create!([{
        user_id: 1,
        status: 0,
        position: 1,
        score: 25,
        league_race_id: 1,
      },
      {
        user_id: 2,
        status: 0,
        position: 2,
        score: 18,
        league_race_id: 1,
      },
      {
        user_id: 3,
        status: 0,
        position: 3,
        score: 15,
        league_race_id: 1,
      },
      {
        user_id: 1,
        status: 0,
        position: 3,
        score: 15,
        league_race_id: 2,
      },
      {
        user_id: 2,
        status: 0,
        position: 1,
        score: 25,
        league_race_id: 2,
      },
      {
        user_id: 3,
        status: 0,
        position: 2,
        score: 18,
        league_race_id: 2,
      },
      {
        user_id: 1,
        status: 0,
        position: 3,
        score: 15,
        league_race_id: 3,
      },
      {
        user_id: 2,
        status: 0,
        position: 1,
        score: 25,
        league_race_id: 3,
      },
      {
        user_id: 3,
        status: 0,
        position: 2,
        score: 18,
        league_race_id: 3,
      }
      ])

      p "Created #{RaceParticipant.count} race participants"
    else
      p "No race participants created"
    end
  end
end
