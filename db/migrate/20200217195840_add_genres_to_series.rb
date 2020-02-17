class AddGenresToSeries < ActiveRecord::Migration[5.2]
  def change
    add_reference :series, :genre, foreign_key: true
  end
end
