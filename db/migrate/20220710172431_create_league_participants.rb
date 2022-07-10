class CreateLeagueParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :league_participants do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.integer :position
      t.integer :score
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
