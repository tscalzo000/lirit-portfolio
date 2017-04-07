class CreateBio < ActiveRecord::Migration[5.0]
  def change
    create_table :bios do |t|
      t.string :text

      t.belongs_to :user
    end
  end
end
