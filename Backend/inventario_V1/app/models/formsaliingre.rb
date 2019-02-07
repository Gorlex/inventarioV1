class Formsaliingre < ApplicationRecord
	validates :form_id, presence: true
	validates :fecha_sal_ing, presence: true
	validates :equipo_id, presence: true
	validates :area, presence: true
	validates :concepto, presence: true
	validates :empresa_id, presence: true
	validates :contrato_id, presence: true
end
