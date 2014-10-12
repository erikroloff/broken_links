class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.text :post_information
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
