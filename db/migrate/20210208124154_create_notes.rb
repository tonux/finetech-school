class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :matiere, null: false, foreign_key: true
      t.decimal :valeur, precision: 10, scale: 2
      t.references :evaluation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :commentaire

      t.timestamps
    end
  end
end
