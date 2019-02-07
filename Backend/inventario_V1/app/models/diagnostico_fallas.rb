class DiagnosticoFallas < ApplicationRecord
	validates :diagnostico_id, presence: true
	validates :diagnostico, presence: true

end
