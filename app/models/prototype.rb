class Prototype < ApplicationRecord
  validates :prototype_name, presence: true
  validates :catch_copy, presence: true
  validates :concept_info, presence: true
  validates :image_url, presence: true
end
