class AddAsaToPatient < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :asa, :string
  end
end
