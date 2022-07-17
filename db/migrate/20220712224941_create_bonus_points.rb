class CreateBonusPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :bonus_points do |t|
      t.text :description
      t.integer :points
      t.references :league_race, null: false, foreign_key: true
      t.references :race_participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
