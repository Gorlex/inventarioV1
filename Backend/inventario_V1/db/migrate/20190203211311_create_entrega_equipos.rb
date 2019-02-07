class CreateEntregaEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :entrega_equipos, id: false do |t|
      t.integer :entrega_equipos_id, primary_key: true
      t.string :equi_opera_boolean
      t.boolean :equi_fuera
      t.boolean :entregado
      t.boolean :mante_preve
      t.boolean :mante_correc
      t.boolean :calibracion

      t.timestamps
    end
  end
end
