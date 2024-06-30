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

  test "Exercise 9: Add validation to the `Product` model to 
  ensure that the `name` field is present." do 
    # Create a product without a name
    price = 123.45
    description = "My Description"

    product = Product.new(price: price, description: description)

    # Assert that product without name is not valid
    assert_equal product.valid?, false
    
    # Assert that product without name cannot be created
    assert_raise ( ActiveRecord::RecordInvalid ) {
      Product.create!(price: price, description: description)
    }
  end

  test "Exercise 10: Implement a custom validation to check if the `price` is a positive number." do
    # Create a product with a negative price
    name = "My Product"
    price = -123.45
    description = "My Description"

    product = Product.new(name: name, price: price, description: description)

    # Assert that product with negative price is not valid
    assert_equal product.valid?, false
    
    # Assert that product with negative price cannot be created
    assert_raise ( ActiveRecord::RecordInvalid ) {
      Product.create!(name: name, price: price, description: description)
    }

    # Also assert that product with price=0 cannot be created
    assert_raise ( ActiveRecord::RecordInvalid ) {
      Product.create!(name: name, price: 0, description: description)
    }
  end

  test "Exercise 13: Define a `before_save` callback in the 
  `Product` model to update the `updated_at` timestamp." do
    # Store datetime before saving product
    before_save = DateTime.current

    # Create a product
    name = "My Product"
    price = 123.45
    description = "My Description"
    
    product = Product.create!(name: name, price: price, description: description)

    # Store datetime after saving product
    after_save = DateTime.current

    # Assert that updated_at is after before_save
    assert product.updated_at.after?(before_save)
    # Assert that updated_at is before after_save
    assert product.updated_at.before?(after_save)
  end
end
