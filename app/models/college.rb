class College < ApplicationRecord
  has_and_belongs_to_many :applicants
  extend FriendlyId
  friendly_id :college, use: :slugged
end
