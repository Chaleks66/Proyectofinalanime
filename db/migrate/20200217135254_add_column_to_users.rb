class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :varchar
    add_column :users, :name, :integer
    add_column :users, :img, :string
  end
end
