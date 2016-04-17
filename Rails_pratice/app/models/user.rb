class User < ActiveRecord::Base
  has_one :profile 
  has_many :items
  has_many :book_owner 
  has_many :book , :through => :book_owner

end
