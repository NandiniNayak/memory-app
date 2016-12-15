class CreateMemoryTests < ActiveRecord::Migration
  def change
    create_table :memory_tests do |t|
      t.string :qName
      t.string :qBirthday
      t.string :qSuburb
      t.string :qPet
      t.string :qSchool
      t.string :qJob
      t.string :qGrandchildren
      t.references :user, index: true, foreign_key: true
      t.integer :score, default: 0

      t.timestamps null: false
    end
  end
end
