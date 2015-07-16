class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :headline
      t.string :story
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
