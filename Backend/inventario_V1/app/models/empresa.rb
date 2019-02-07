class Empresa < ApplicationRecord
validates :empresas_id, presence: true
	validates :razon_nom, presence: true
	validates :telefono, presence: true
	validates :direccion, presence: true
	validates :contrato_id, presence: true
end
