class AddNameProfileOccupationPositionToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :text
    add_column :users, :occuoation, :text
    add_column :users, :position, :text
  end
end
