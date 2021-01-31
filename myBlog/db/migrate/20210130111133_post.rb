class Post < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.status :status
      t.timestamps
    end
  end
end
