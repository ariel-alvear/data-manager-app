# Tarea para generar seed de Carreras de liga
namespace :seed do
  desc "Seed League Races"
  task league_races: :environment do
    if LeagueRace.count == 0 && League.exists?(1) && RaceTrack.exists?(1)
      LeagueRace.create!([{
        name: 'Primera Carrera div1 de prueba de app',
        description: 'Carrera falsa generada para probar la app vinculada a div1 test',
        race_track_id: 1,
        league_id: 1,
      },
      {
        name: 'Segunda Carrera div1 de prueba de app',
        description: 'Carrera falsa generada para probar la app vinculada a div1 test',
        race_track_id: 1,
        league_id: 1,
      },
      {
        name: 'Primera Carrera div2 de prueba de app',
        description: 'Carrera falsa generada para probar la app vinculada a div2 test',
        race_track_id: 1,
        league_id: 2,
      }])

      p "Created #{LeagueRace.count} league races"
    else
      p "No league races created"
    end
  end
end
