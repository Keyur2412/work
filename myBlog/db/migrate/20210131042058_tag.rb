class Tag < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.string :tag_description
      t.timestamps
    end
  end
end
