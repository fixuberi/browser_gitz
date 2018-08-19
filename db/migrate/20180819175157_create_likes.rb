class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :entity_id
      t.string :entity_type

      t.timestamps
    end
  end
end
