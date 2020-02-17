class RemoveGenreFromSeries < ActiveRecord::Migration[5.2]
  def change
    remove_column :series, :genre, :string
  end
end
