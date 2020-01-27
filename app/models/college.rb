class College < ApplicationRecord
  has_many :applicants
  extend FriendlyId
  friendly_id :name, use: :slugged
end
