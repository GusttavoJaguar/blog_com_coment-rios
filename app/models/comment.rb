class Comment < ApplicationRecord
  belongs_to :post
  validate :post
  validates_associated :post
  with_options :allow_blank => true do |c|
    c.validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
    c.validates_format_of :url, with: /\A(http|https):\/\/[a-z0-9\-\.]+\.[a-z]{2,3}(\/\S*)?\z/i
  end
end
