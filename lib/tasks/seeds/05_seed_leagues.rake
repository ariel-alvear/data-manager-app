# Tarea para generar seed de Ligas
namespace :seed do
  desc "Seed Leagues"
  task leagues: :environment do
    if League.count == 0
      League.create!([{
        name: 'Temporada 1 División 1 test',
        description: 'Liga falsa generada para probar la app',
      },
      {
        name: 'Temporada 1 División 2 test',
        description: 'Otra liga falsa generada para probar la app',
      },])

      p "Created #{League.count} leagues"
    else
      p "No leagues created"
    end
  end
end
