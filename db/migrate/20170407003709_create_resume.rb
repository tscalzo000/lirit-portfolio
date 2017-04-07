class CreateResume < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :url

      t.belongs_to :user
    end
  end
end
