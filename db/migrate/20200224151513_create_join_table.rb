class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :series, :lists do |t|
        
       t.index [:serie_id, :list_id]
       t.index [:list_id, :serie_id]
    end
  end
end
