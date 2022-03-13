class AddContentUserPrototypeToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :content, :text

    add_reference :comments, :prototype, null: false, foreign_key: true
  end
end
