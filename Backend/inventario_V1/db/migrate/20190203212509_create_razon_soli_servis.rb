class CreateRazonSoliServis < ActiveRecord::Migration[5.2]
  def change
    create_table :razon_soli_servis, id: false do |t|
      t.integer :razon_id, primary_key: true
      t.text :razon_soli_servi

      t.timestamps
    end
  end
end
