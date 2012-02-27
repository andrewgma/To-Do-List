class User < ActiveRecord::Base
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
