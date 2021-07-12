class AddArtTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :art_type, :string
  end
end
