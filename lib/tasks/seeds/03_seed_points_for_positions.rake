# Tarea para generar seed de posiciones y puntajes
namespace :seed do
  desc "Seed points for positions"
  task points_for_positions: :environment do
    if PointsForPosition.count == 0 && ScoreSystem.exists?(1)
      PointsForPosition.create!([{
        name: 'Primer lugar',
        position: 1,
        points: 25,
        score_system_id: 1,
      },
      {
        name: 'Segundo lugar',
        position: 2,
        points: 18,
        score_system_id: 1,
      },
      {
        name: 'Tercer lugar',
        position: 3,
        points: 15,
        score_system_id: 1,
      },
      {
        name: 'Cuarto lugar',
        position: 4,
        points: 12,
        score_system_id: 1,
      },
      {
        name: 'Quinto lugar',
        position: 5,
        points: 10,
        score_system_id: 1,
      },
      {
        name: 'Sexto lugar',
        position: 6,
        points: 8,
        score_system_id: 1,
      },
      {
        name: 'Séptimo lugar',
        position: 7,
        points: 6,
        score_system_id: 1,
      },
      {
        name: 'Octavo lugar',
        position: 8,
        points: 4,
        score_system_id: 1,
      },
      {
        name: 'Noveno lugar',
        position: 9,
        points: 2,
        score_system_id: 1,
      },
      {
        name: 'Décimo lugar',
        position: 10,
        points: 1,
        score_system_id: 1,
      },
      {
        name: 'Decimoprimer lugar',
        position: 11,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimosegundo lugar',
        position: 12,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimotercer lugar',
        position: 13,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimocuarto lugar',
        position: 14,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimoquinto lugar',
        position: 15,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimosexto lugar',
        position: 16,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimoséptimo lugar',
        position: 17,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimoctavo lugar',
        position: 18,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Decimonoveno lugar',
        position: 19,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Vigésimo lugar',
        position: 20,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'DNF',
        position: 0,
        points: 0,
        score_system_id: 1,
      },
      {
        name: 'Primer lugar',
        position: 1,
        points: 8,
        score_system_id: 2,
      },
      {
        name: 'Segundo lugar',
        position: 2,
        points: 7,
        score_system_id: 2,
      },
      {
        name: 'Tercer lugar',
        position: 3,
        points: 6,
        score_system_id: 2,
      },
      {
        name: 'Cuarto lugar',
        position: 4,
        points: 5,
        score_system_id: 2,
      },
      {
        name: 'Quinto lugar',
        position: 5,
        points: 4,
        score_system_id: 2,
      },
      {
        name: 'Sexto lugar',
        position: 6,
        points: 3,
        score_system_id: 2,
      },
      {
        name: 'Séptimo lugar',
        position: 7,
        points: 2,
        score_system_id: 2,
      },
      {
        name: 'Octavo lugar',
        position: 8,
        points: 1,
        score_system_id: 2,
      },
      {
        name: 'Noveno lugar',
        position: 9,
        points: 2,
        score_system_id: 2,
      },
      {
        name: 'Décimo lugar',
        position: 10,
        points: 1,
        score_system_id: 2,
      },
      {
        name: 'Decimoprimer lugar',
        position: 11,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimosegundo lugar',
        position: 12,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimotercer lugar',
        position: 13,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimocuarto lugar',
        position: 14,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimoquinto lugar',
        position: 15,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimosexto lugar',
        position: 16,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimoséptimo lugar',
        position: 17,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimoctavo lugar',
        position: 18,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Decimonoveno lugar',
        position: 19,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'Vigésimo lugar',
        position: 20,
        points: 0,
        score_system_id: 2,
      },
      {
        name: 'DNF',
        position: 0,
        points: 0,
        score_system_id: 2,
      }])

      p "Created #{PointsForPosition.count} points for positions"
    else
      p "No points for positions created"
    end
  end
end
