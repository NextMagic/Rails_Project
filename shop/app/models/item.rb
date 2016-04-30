class Item < ActiveRecord::Base
  belongs_to :cate
  has_attached_file :cover, 
    styles: {
              cover: "300x300>", 
              icon: "150x150#" 
  }, 
    default_url: "/images/:style/missing.png"
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
