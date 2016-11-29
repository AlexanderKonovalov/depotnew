class Product < ActiveRecord::Base
validates :title, uniqueness: true
validates:description , presence:true
validates:image_url, allow_blank:true, format: {with: %r{\.(gif|jpg|png)\Z}i,message: 'URLneedforamtgif,jpg,png' }
validates:price, numericality:{greater_than_or_equal_to: 0.01}
end
