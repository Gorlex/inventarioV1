class Laborejecutada < ApplicationRecord
	validates :labor_id, presence: true
	validates :labor, presence: true

end
