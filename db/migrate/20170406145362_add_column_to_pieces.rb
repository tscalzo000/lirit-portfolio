class AddColumnToPieces < ActiveRecord::Migration[5.0]
  def up
    add_reference :pieces, :gallery, index: true
  end

  def down
    remove_reference :pieces, :gallery
  end
end
