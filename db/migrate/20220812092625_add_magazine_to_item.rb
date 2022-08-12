class AddMagazineToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :magazine, null: false, foreign_key: true
  end
end
