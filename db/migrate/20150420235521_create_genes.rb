class CreateGenes < ActiveRecord::Migration
  def change
    create_table :genes do |t|
      t.string :name
      t.string :variance
      t.string :info

      t.timestamps null: false
    end
  end
end
