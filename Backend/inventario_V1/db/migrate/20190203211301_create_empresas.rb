class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas, id: false do |t|
      t.integer :empresa_id, primary_key: true
      t.string :razon_nom
      t.string :telefono
      t.string :direccion
      t.integer :contrato_id

      t.timestamps
    end
  end
end
