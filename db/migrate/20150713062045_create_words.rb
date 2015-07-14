class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :noun
      t.string :adjective
      t.string :adverb
      t.string :place
      t.string :pronoun
      t.string :preposition
      t.string :conjuction
      t.string :interjection

      t.timestamps null: false
    end
  end
end
