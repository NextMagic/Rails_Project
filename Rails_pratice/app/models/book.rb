class Book < ActiveRecord::Base
  has_many :book
  has_many :book , :through => :book_owner
  belongs_to :owner ,:polymorphic => true
end
