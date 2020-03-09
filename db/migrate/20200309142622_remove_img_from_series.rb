class RemoveImgFromSeries < ActiveRecord::Migration[5.2]
  def change
    remove_column :series, :img, :string
  end
end
