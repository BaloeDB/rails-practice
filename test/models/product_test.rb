require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "Test the numericality validation with valid and invalid prices." do
    # Valid: product that costs > 0
    valid = Product.create!(price: 123.45)
    assert_includes Product.all, valid
    # Invalid: product that costs <= 0
    assert_raises ( ActiveRecord::RecordInvalid ) {
      invalid = Product.create!(price: -123.45)
    }
  end

  test "Test the inclusion validation with different category values." do
    # Valid: one of the categories
    category = Product.categories().sample
    valid = Product.create!(price: 123.45, category: category)
    assert_includes Product.all, valid
    # Invalid: not part of the list of categories
    assert_raises ( ActiveRecord::RecordInvalid ) {
      invalid = Product.create!(price: 123.45, category: category + "Bla")
    }
  end
end
