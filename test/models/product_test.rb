require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "products must not be empty" do
    product = Product.new
       assert product.invalid?
       assert product.errors[:title].any?
       assert product.errors[:description].any?
       assert product.errors[:price].any?
       assert product.errors[:image_url].any?
   end
end

def new_product(image_url)
Prpduct.new( title: "My book Title"),description: "yyy", price:1, image_url:image_url)
end

test "image url" do 
ok = %w{ gred.gif fred.jpg fred.png}
bad = %w{fred.doc}

ok.each.do  |name|
assert new_product(name).valid?, "name shouldn't be invalid"
end

bad.each do|name|
assert new_product(name).invalid?,"name shouldn't be valid" 
end
end
