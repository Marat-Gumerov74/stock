class AddEmailPasswordToMagazine < ActiveRecord::Migration[7.0]
  def change
    add_column :magazines, :email, :string
    add_column :magazines, :password_hash, :string
    add_column :magazines, :password_salt, :string
  end
end
