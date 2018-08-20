class AddUniqueIndexToLikes < ActiveRecord::Migration[5.2]
  def change
    add_index :likes, [:entity_id, :entity_type], unique: true
  end
end
