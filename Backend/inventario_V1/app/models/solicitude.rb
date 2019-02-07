class Solicitude < ApplicationRecord
	validates :solici_id, presence: true
	validates :nombre_repor, presence: true
	validates :area, presence: true
	validates :ubicacion, presence: true
	validates :fecha_soli, presence: true
end
