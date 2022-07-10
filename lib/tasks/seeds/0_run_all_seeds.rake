# Tarea para correr todas las tareas de 
namespace :seed do
  desc 'Run all seeds'
  task :run_all_seeds => [
                          :race_tracks,
                          :score_systems,
                          :points_for_positions,
                          :users,
                          :leagues,
                          :league_races,
                          :race_participants,
                          :league_participants,
                          ] do
    p 'Seed process terminated'
  end
end
