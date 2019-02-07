class CambioNombreTablasVarias < ActiveRecord::Migration[5.2]
  def change
  	  	rename_table :entrega_equipos, :entregaEquipos
  	  	rename_table :form_sali_ingres, :formSaliIngres
  	  	rename_table :identi_equipos, :identiEquipos
  	  	rename_table :labor_ejecutadas, :laborEjecutadas
  	  	rename_table :orden_servi_equipos, :ordenServiEquipos
  	  	rename_table :razon_soli_servis, :razonSoliServis
  	  	rename_table :recibido_area_equipos, :recibidoAreaEquipos
  	  	rename_table :reco_obsers, :recoObsers
  	  	rename_table :repues_materis, :repuesMateris
  	  	

  end
end
