class Applicant < ApplicationRecord
    has_and_belongs_to_many :colleges
    accepts_nested_attributes_for :colleges
    extend FriendlyId
    friendly_id :name, use: :slugged
end
