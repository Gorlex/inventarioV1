class CambioNombreColEntregaEqui < ActiveRecord::Migration[5.2]
  def change
  	rename_column :entrega_equipos, :equi_opera_boolean, :equi_opera
  end
end
