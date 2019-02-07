class Repuesmateri < ApplicationRecord
	validates :mate_id, presence: true
	validates :item, presence: true
	validates :descripcion, presence: true
	validates :unidad, presence: true
	validates :cantidad, presence: true

end
