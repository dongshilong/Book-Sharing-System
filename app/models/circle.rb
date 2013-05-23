class Circle < ActiveRecord::Base
  attr_accessible :introduction, :logo, :name, :owner
  
  belongs_to :owner, :class_name => 'User'
  has_and_belongs_to_many :users
end
