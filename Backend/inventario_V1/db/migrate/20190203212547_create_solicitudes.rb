class CreateSolicitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitudes, id: false do |t|
      t.integer :solici_id, primary_key: true
      t.string :nombre_repor
      t.string :area
      t.string :ubicacion
      t.datetime :fecha_soli

      t.timestamps
    end
  end
end
