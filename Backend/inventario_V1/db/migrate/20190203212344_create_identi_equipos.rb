class CreateIdentiEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :identi_equipos, id: false do |t|
      t.integer :equipo_id, primary_key: true
      t.string :marca
      t.string :modelo
      t.string :serie
      t.string :inventario
      t.string :placa

      t.timestamps
    end
  end
end
