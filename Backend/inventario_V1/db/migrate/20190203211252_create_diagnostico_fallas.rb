class CreateDiagnosticoFallas < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnostico_fallas, id: false do |t|
      t.integer :diagnostico_id, primary_key: true
      t.text :diagnostico

      t.timestamps
    end
  end
end
