class CreateArtImages < ActiveRecord::Migration[6.1]
  def change
    create_table :art_images do |t|
      t.string :title
      t.integer :user_id
      t.string :genre
      t.string :art_type
      t.string :description

      t.timestamps
    end
  end
end