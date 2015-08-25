class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :thoughts

      t.timestamps
    end
  end
end
