class CreateComercials < ActiveRecord::Migration
  def change
    create_table :comercials do |t|
      t.string :consulta

      t.timestamps
    end
  end
end
