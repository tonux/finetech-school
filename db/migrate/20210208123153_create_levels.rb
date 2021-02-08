class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :libelle
      t.integer :niveau
      t.integer :nombre_eleve
      t.references :user, null: false, foreign_key: true
      t.references :etablissement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
