class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :surName
      t.date :dob
      t.string :gender
      t.string :hospital
      t.date :opDate
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
      t.string :q11
      t.string :q12
      t.string :q13
      t.string :q14
      t.string :q15
      t.string :q16
      t.string :q17
      t.string :q18
      t.string :q19
      t.string :q20
      t.string :q21
      t.string :q22

      t.timestamps
    end
  end
end
