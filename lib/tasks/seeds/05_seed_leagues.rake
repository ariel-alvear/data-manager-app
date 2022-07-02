# Tarea para generar seed de Ligas
namespace :seed do
  desc "Seed Leagues"
  task leagues: :environment do
    if League.count == 0 && ScoreSystem.exists?(1)
      League.create!([{
        name: 'Temporada 1 División 1 test',
        description: 'Liga falsa generada para probar la app',
        score_system_id: 1,
      }])

      p "Created #{League.count} leagues"
    else
      p "No leagues created"
    end
  end
end
