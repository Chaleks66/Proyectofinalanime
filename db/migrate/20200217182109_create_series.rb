class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :name
      t.integer :year
      t.boolean :status
      t.string :img

      t.timestamps
    end
  end
end
