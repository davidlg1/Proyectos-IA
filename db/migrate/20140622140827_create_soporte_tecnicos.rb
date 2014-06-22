class CreateSoporteTecnicos < ActiveRecord::Migration
  def change
    create_table :soporte_tecnicos do |t|
      t.string :consulta

      t.timestamps
    end
  end
end
