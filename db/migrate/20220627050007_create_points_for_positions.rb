class CreatePointsForPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :points_for_positions do |t|
      t.string :name
      t.integer :position
      t.integer :points
      t.references :score_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
