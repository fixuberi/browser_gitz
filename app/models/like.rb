class Like < ApplicationRecord
  validates :entity_id, uniqueness: {scope: :entity_type}
end
