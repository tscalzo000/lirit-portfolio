class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :name, null: false
      t.string :description
      t.string :url
      t.boolean :showcase
    end
  end
end
