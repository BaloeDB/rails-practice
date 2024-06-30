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

  test "Exercise 3: Implement a scope in the `Product` model 
  to retrieve all products with prices greater than $50." do
    # 5 Products that cost more than 50
    for i in 1..5 do
      Product.create!(name: "Product #{i}" , price: 50 + i, description: "Product #{i} Description")
    end

    # 5 Products that cost less than 50
    for i in 6..10 do
      Product.create!(name: "Product #{i}", price: 50 - i, description: "Product #{i} Description")
    end

    # Should retrieve 5 products that costs more than 50
    scope = Product.costs_more_than_50
    assert_equal scope.length, 5
    for i in 1..5 do
      assert_includes scope, Product.find_by(name: "Product #{i}")
    end
  end
  
  test "Exercise 5: Write a migration to add a `category_id` 
  foreign key to the `products` table." do
    # Create a category
    name = "My Category"
    category = Category.create!(name: name)
    
    # Create a product
    name = "My Product"
    price = 123.45
    description = "My Description"
    
    product = Product.create!(name: name, price: price, description: description)

    # Assign a category to the product
    product.update!(category: category)

    # Assert that a category can be added to a product
    assert_includes category.products, product
    assert_equal product.category, category
  end

  test "Exercise 7: Add a new column called `quantity` to the `products` table using a migration." do
    # Create a product
    name = "My Product"
    price = 123.45
    description = "My Description"
    
    product = Product.create!(name: name, price: price, description: description)

    # Assert that product has no quantity yet
    assert_nil product.quantity

    # Assign a quantity to the product
    quantity = 5
    product.update!(quantity: quantity)

    # Assert that a quantity can be added to a product
    assert_equal product.quantity, quantity
  end
end
