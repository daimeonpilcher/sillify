class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :html
      t.string :link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
