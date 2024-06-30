require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "Exercise 1: Create a new Rails application and 
  define a model called `Product` with attributes 
  like `name`, `price`, and `description`." do
    name = "My Product"
    price = 123.45
    description = "My Description"
    
    product = Product.create!(name: name, price: price, description: description)
    
    assert_includes Product.all, product
    assert_equal product.name, name
    assert_equal product.price, price
    assert_equal product.description, description
  end
end
