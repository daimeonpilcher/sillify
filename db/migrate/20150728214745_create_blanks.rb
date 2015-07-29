class CreateBlanks < ActiveRecord::Migration
  def change
    create_table :blanks do |t|
      t.string :old_word
      t.string :type
      t.string :new_word
      t.references :story, index: true, foreign_key: true
      t.references :sillified, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
