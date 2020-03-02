class AddColumnToSeries < ActiveRecord::Migration[5.2]
  def change
    add_reference :series, :comment, foreign_key: true
  end
end
