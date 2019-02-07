class CreateLaborEjecutadas < ActiveRecord::Migration[5.2]
  def change
    create_table :labor_ejecutadas, id: false do |t|
      t.integer :labor_id, primary_key: true
      t.text :labor

      t.timestamps
    end
  end
end
