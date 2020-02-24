class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.text :description
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
