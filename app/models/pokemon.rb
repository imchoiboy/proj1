class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	validates :name, uniqueness: { scope: :trainer_id}, presence: true
end
