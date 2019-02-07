class CreateContratos < ActiveRecord::Migration[5.2]
  def change
    create_table :contratos, id: false do |t|
      t.integer :contrato_id, primary_key: true
      t.string :contrato
      t.date :fecha_contrato

      t.timestamps
    end
  end
end
