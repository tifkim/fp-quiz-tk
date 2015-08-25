class Post < ActiveRecord::Base
  validates :thoughts, :presence => true, :length => { :minimum => 5}
end
