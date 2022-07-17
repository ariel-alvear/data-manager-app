# Tarea para generar seed de participantes de liga
namespace :seed do
  desc "Seed league participants"
  task league_participants: :environment do
    if LeagueParticipant.count == 0
      LeagueParticipant.create!([{
        user_id: 1,
        status: 0,
        league_id: 1,
      },
      {
        user_id: 2,
        status: 0,
        league_id: 1,
      },
      {
        user_id: 3,
        status: 0,
        league_id: 1,
      },
      {
        user_id: 1,
        status: 0,
        league_id: 2,
      },
      {
        user_id: 2,
        status: 0,
        league_id: 2,
      },
      {
        user_id: 3,
        status: 0,
        league_id: 2,
      },
      ])

      p "Created #{LeagueParticipant.count} league participants"
    else
      p "No league participants created"
    end
  end
end
