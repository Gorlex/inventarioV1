class CreateRecibidoAreaEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :recibido_area_equipos, id: false do |t|
      t.integer :recibido_id, primary_key: true
      t.string :recibido_por
      t.datetime :fecha_recibido
      t.string :persona_asign

      t.timestamps
    end
  end
end
