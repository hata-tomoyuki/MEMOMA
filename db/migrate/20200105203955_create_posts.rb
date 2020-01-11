class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :theme_id
      t.text :text
      t.timestamps
    end
  end
end
