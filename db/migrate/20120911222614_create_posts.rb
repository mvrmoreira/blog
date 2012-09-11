class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :corpo
      t.integer :usuario_id

      t.timestamps
    end
    add_index :posts, :usuario_id    
  end
end
