class Razonsoliservi < ApplicationRecord
	validates :razon_id, presence: true
	validates :razon_soli_servi, presence: true

end
