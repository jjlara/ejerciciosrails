class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :titulo
      t.integer :ejercicio_id

      t.timestamps
    end
  end
end
