class Story < ActiveRecord::Base
  belongs_to :user
  has_many :blanks
  has_many :sillifieds, through: :blanks

end
