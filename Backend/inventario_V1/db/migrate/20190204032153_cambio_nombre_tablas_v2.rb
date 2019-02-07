class CambioNombreTablasV2 < ActiveRecord::Migration[5.2]
  def change
  		rename_table :entregaEquipos, :entregaequipos
  	  	rename_table :formSaliIngres, :formsaliingres
  	  	rename_table :identiEquipos, :identiequipos
  	  	rename_table :laborEjecutadas, :laborejecutadas
  	  	rename_table :ordenServiEquipos, :ordenserviequipos
  	  	rename_table :razonSoliServis, :razonsoliservis
  	  	rename_table :recibidoAreaEquipos, :recibidoareaequipos
  	  	rename_table :recoObsers, :recoobsers
  	  	rename_table :repuesMateris, :repuesmateris
  end
end
