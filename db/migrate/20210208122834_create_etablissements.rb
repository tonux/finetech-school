class CreateEtablissements < ActiveRecord::Migration[6.1]
  def change
    create_table :etablissements do |t|
      t.string :libelle
      t.string :adresse
      t.references :user, null: false, foreign_key: true
      t.string :telephone

      t.timestamps
    end
  end
end
