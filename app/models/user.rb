class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :name, :username, :email, :phone, :password, :password_confirmation
  
  has_many :publications, :class_name => "Publication", :foreign_key => "contributor"
  has_and_belongs_to_many :circles
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_presence_of :email
  validates_uniqueness_of :email
end
