class CreateRecoObsers < ActiveRecord::Migration[5.2]
  def change
    create_table :reco_obsers, id: false do |t|
      t.integer :recomenda_id, primary_key: true
      t.text :recomen_observa

      t.timestamps
    end
  end
end
