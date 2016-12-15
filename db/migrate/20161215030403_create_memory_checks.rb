class CreateMemoryChecks < ActiveRecord::Migration
  def change
    create_table :memory_checks do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10
      t.references :user, index: true, foreign_key: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
