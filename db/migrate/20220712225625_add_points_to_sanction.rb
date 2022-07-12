class AddPointsToSanction < ActiveRecord::Migration[6.1]
  def change
    add_column :sanctions, :penalized_points, :integer
  end
end
