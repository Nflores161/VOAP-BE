class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :location
      t.string :bio
      t.string :forum_posts
      t.boolean :creator
      t.string :profile_pic_url
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
