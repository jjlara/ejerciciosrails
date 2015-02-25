class CreateEjercicios < ActiveRecord::Migration
  def change
    create_table :ejercicios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
