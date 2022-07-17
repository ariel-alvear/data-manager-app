# Tarea para generar seed de sistema de puntajes
namespace :seed do
  desc "Seed score systems"
  task score_systems: :environment do
    if ScoreSystem.count == 0
      ScoreSystem.create!([{
        name: 'Formula 1',
        description: 'Sistema de puntucación de la fórmula 1 actual',
      },
      {
        name: 'Sprint F1',
        description: 'Sistema de puntucación de Sprint de la fórmula 1 actual',
      },
      ])

      p "Created #{RaceTrack.count} score systems"
    else
      p "No score systems created"
    end
  end
end
