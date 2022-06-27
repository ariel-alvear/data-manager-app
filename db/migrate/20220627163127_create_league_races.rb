class CreateLeagueRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :league_races do |t|
      t.string :name
      t.text :description
      t.references :race_track, null: false, foreign_key: true
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
