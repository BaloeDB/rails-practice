<!-- Note: I should probably prevent new migrations from failing on previous objects/tests. You can deal with this in multiple ways.  -->

1. **Active Record Basics**:
    - Exercise 1: Create a new Rails application and define a model called `Product` with attributes like `name`, `price`, and `description`.
    - Exercise 2: Write a migration to add an index on the `name` column of the `products` table.
    - Exercise 3: Implement a scope in the `Product` model to retrieve all products with prices greater than $50.
    - Exercise 4: Create a form to add new products through a web interface.
      - Use rails generate scaffold_controller to create controller and views for already existing model
      - Also pass the properties of the model to make sure they are includes

2. **Active Record Migrations**:
    - Exercise 5: Write a migration to add a `category_id` foreign key to the `products` table.
    - Exercise 6: Create a migration to rename the `description` column to `product_description`.
        - This breaks the tests, there is no real reason to do this.
        - I could create an alias in the Product model, using alias_attribute.
    - Exercise 7: Add a new column called `quantity` to the `products` table using a migration.
    - Exercise 8: Roll back a specific migration and then re-run it.
      - Already have done this a lot. db:migrate & db:rollback.

3. **Active Record Validations**:
    - Exercise 9: Add validation to the `Product` model to ensure that the `name` field is present.
    - Exercise 10: Implement a custom validation to check if the `price` is a positive number.
     - No need to do this with a custom validation. Numericality already exists for this.
    - Exercise 11: Create a form that displays validation errors when saving an invalid product.
     - Already done by the scaffold-controller generator a while ago. Could add the new properties and category model however.
    - Exercise 12: Write a test to verify the validation rules for the `Product` model.

4. **Active Record Callbacks**:
    - Exercise 13: Define a `before_save` callback in the `Product` model to update the `updated_at` timestamp.
    - Exercise 14: Implement a `before_create` callback to generate a unique SKU for each product.
    - Exercise 15: Create a `after_destroy` callback to log deleted products.
    - Exercise 16: Test the behavior of your callbacks using RSpec or MiniTest.

5. **Association Basics**:
    - Exercise 17: Set up a one-to-many association between `Grouping` and `Product` models.
    - Exercise 18: Create a many-to-many association between `Product` and `Tag` models.
    - Exercise 19: Implement a nested form to add multiple products to an order.
    - Exercise 20: Write a query to retrieve all orders along with their associated products.