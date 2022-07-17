class AddScoreSystemToLeagueRace < ActiveRecord::Migration[6.1]
  def up
    add_column :league_races, :score_system_id, :bigint
    add_foreign_key :league_races, :score_systems, column: :score_system_id, validate: false
  end
  
  def down
    remove_foreign_key :league_races, :score_systems
    remove_column :league_races, :score_systems
  end
end
