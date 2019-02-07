class CreateFormSaliIngres < ActiveRecord::Migration[5.2]
  def change
    create_table :form_sali_ingres, id: false do |t|
      t.integer :form_id, primary_key: true
      t.datetime :fecha_sal_ing
      t.integer :equipo_id
      t.string :area
      t.text :concepto
      t.integer :empresa_id
      t.integer :contrato_id

      t.timestamps
    end
  end
end
