class Identiequipo < ApplicationRecord
	validates :equipo_id, presence: true
	validates :marca, presence: true
	validates :modelo, presence: true
	validates :serie, presence: true
	validates :inventario, presence: true
	validates :placa, presence: true
end
