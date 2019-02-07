class CreateRepuesMateris < ActiveRecord::Migration[5.2]
  def change
    create_table :repues_materis, id: false do |t|
      t.integer :mate_id, primary_key: true
      t.string :item
      t.text :descripcion
      t.integer :unidad
      t.integer :cantidad

      t.timestamps
    end
  end
end
