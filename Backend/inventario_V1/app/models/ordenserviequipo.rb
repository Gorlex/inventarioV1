class Ordenserviequipo < ApplicationRecord
	validates :consecutivo_id, presence: true
	validates :solici_id, presence: true
	validates :equipo_id, presence: true
	validates :razon_id, presence: true
	validates :recibido_id, presence: true
	validates :diagnostico_id, presence: true
	validates :labor_id, presence: true
	validates :entrega_equi_id, presence: true
	validates :nombre_pers1, presence: true
	validates :nombre_pers2, presence: true
	validates :nombre_pers3, presence: true
	validates :visto_inge, presence: true
	validates :nom_cargo_recibe, presence: true
	validates :fecha_orden, presence: true
	validates :recomenda_id, presence: true
	validates :mate_id, presence: true

end
