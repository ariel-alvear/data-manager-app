# Tarea para correr todas las tareas de 
namespace :seed do
  desc 'Run all seeds'
  task run_all_seeds: :environment do
    Rake.application.tasks.each do |task|
      task.invoke if task.name.starts_with?("seed:")
    end
  end
end
