class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
  validates :email, 
    :presence => true, 
    :uniqueness => true, 
    :length => { :minimum => 6 }, 
  :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, 
    :message => "invalid" }
  validates :name, :presence => true
  # , 
  #   :format => { :with => /\A([[:alnum:]]+[a-zA-Z]*)/, 
  #   :message => "Invalid username" }
  validates :password, :presence => true
end
