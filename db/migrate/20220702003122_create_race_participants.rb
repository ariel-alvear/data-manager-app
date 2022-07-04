class CreateRaceParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :race_participants do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.string :position
      t.integer :score
      t.references :league_race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
