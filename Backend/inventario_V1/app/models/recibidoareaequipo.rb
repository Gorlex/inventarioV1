class Recibidoareaequipo < ApplicationRecord
	validates :recibido_id, presence: true
	validates :recibido_por, presence: true
	validates :fecha_recibido, presence: true
	validates :persona_asign, presence: true

end
