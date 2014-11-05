class User < ActiveRecord::Base
  has_and_belongs_to_many :activities
  has_many :users
  validates :username,    :presence => true,
            :uniqueness             => { :case_sensitive => false },
            :length                 => { :within => 6..20 }      
  validates :password,    :presence => true,
            :confirmation           => true,
            :length                 => { :within => 6..20 }
  validates :groupname,   :presence => true          

end
