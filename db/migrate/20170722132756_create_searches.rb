class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :firstName
      t.string :surName
      t.date :dob
      t.string :hospital
      t.date :opDate
      t.string :asa

      t.timestamps
    end
  end
end
