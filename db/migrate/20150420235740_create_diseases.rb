class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :state
      t.decimal :quantity
      t.references :gene, index: true

      t.timestamps null: false
    end
    add_foreign_key :diseases, :genes
  end
end
