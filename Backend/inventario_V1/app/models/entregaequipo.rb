class Entregaequipo < ApplicationRecord
	#validates :entrega_equipos_id, presence: true
	validates :equi_opera, presence: true
	validates :equi_fuera, presence: true
	validates :entregado, presence: true
	validates :mante_preve, presence: true
	validates :mante_correc, presence: true
	validates :calibracion, presence: true
end
