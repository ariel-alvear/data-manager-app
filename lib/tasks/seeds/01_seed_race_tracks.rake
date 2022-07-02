# Tarea para generar seed de pistas de carreras
namespace :seed do
  desc "Seed race tracks"
  task race_tracks: :environment do
    if RaceTrack.count == 0
      RaceTrack.create!([{
        name: 'Imola',
        country: 'Italy',
        description: 'Emilia Romagna, 20 curvas',
      }])

      p "Created #{RaceTrack.count} race tracks"
    else
      p "No race tracks created"
    end
  end
end
