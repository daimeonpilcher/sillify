class AddColumnToSillified < ActiveRecord::Migration
  def change
    add_reference :sillifieds, :user, index: true, foreign_key: true
  end
end
