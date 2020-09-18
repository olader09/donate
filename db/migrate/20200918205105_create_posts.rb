class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content, default: ""
      t.float :latitude, default: 0.0
      t.float :longitude, default: 0.0
      t.string :subject, default: ""
      t.string :mood, default: ""
      t.string :author_name, default: ""
      t.string :author_avatar, default: ""
      t.integer :count_likes, default: ""
      t.integer :count_comments, default: ""
      t.integer :count_reposts, default: ""
      t.timestamps
    end
  end
end
