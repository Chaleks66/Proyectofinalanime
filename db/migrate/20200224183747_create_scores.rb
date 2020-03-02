class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.float :score
      t.references :users, foreign_key: true
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end
