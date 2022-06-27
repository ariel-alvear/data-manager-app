class CreateRaceTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :race_tracks do |t|
      t.string :name
      t.text :description
      t.text :country

      t.timestamps
    end
  end
end
