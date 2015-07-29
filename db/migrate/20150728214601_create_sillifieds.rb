class CreateSillifieds < ActiveRecord::Migration
  def change
    create_table :sillifieds do |t|
      t.string :title
      t.text :html
      t.string :url

      t.timestamps null: false
    end
  end
end
