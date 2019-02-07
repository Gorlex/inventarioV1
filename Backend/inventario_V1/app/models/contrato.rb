class Contrato < ApplicationRecord
validates :contrato_id, presence: true
	validates :contrato, presence: true
	validates :fecha_contrato, presence: true
end
