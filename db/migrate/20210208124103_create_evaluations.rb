class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.datetime :date_evaluation
      t.string :libelle

      t.timestamps
    end
  end
end
