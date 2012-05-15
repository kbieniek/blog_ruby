class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :title, :presence => true, :length => { :minimum => 5 }
  validates :name, :presence => true
  has_many :comments, :dependent => :destroy
end
