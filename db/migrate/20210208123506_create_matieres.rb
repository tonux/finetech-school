class CreateMatieres < ActiveRecord::Migration[6.1]
  def change
    create_table :matieres do |t|
      t.string :libelle
      t.string :description
      t.integer :coef
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
