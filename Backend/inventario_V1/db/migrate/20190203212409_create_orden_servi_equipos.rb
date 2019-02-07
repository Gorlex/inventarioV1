class CreateOrdenServiEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :orden_servi_equipos, id: false do |t|
      t.integer :consecutivo_id, primary_key: true
      t.integer :solici_id
      t.integer :equipo_id
      t.integer :razon_id
      t.integer :recibido_id
      t.integer :diagnostico_id
      t.integer :labor_id
      t.integer :entrega_equi_id
      t.string :nombre_pers1
      t.string :nombre_pers2
      t.string :nombre_pers3
      t.string :visto_ing
      t.string :nom_cargo_recibe
      t.datetime :fecha_orden
      t.integer :recomenda_id
      t.integer :mate_id

      t.timestamps
    end
  end
end
