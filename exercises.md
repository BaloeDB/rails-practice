!!!NOTE!!!: The Active Record way claims that intelligence belongs in your models, not in the database.

X 1. **Create a Migration**:
   - Write a migration to create a new table called `users` with columns for `name`, `email`, and `password`.

X 2. **Add a Column**:
   - Create a migration to add a `birthdate` column to the `users` table.

X 3. **Remove a Column**:
   - Write a migration to remove the `password` column from the `users` table.

X 4. **Modify a Column**:
   - Create a migration to change the data type of the `birthdate` column from string to date.

X 5. **Add an Index**:
   - Write a migration to add an index on the `email` column of the `users` table.

X 6. **Create a Join Table**:
   - Generate a migration for a many-to-many relationship between `users` and `roles`.

X 7. **Seed Data**:
   - Create a seed file to populate the `users` table with sample data.

X 8. **Rollback a Migration**:
   - Write a migration to undo the last migration (rollback).

X 9. **Rename a Column**:
   - Create a migration to rename the `name` column in the `users` table to `full_name`.

X 10. **Add Timestamps**:
    - Generate a migration to add `created_at` and `updated_at` timestamps to the `products` table.
    - I am doing this on the roles_users table. Entity tables already come with timestamps by default.

X 11. **Custom Validation**:
    - Write a migration to add a unique constraint on the `email` column in the `users` table.

X 12. **Composite Primary Key**:
    - Create a migration for a table with a composite primary key (e.g., `order_items` with `order_id` and `product_id`).

X 13. **Change Default Value**:
    - Modify the default value of the `status` column in the `orders` table.

X 14. **Add Foreign Key Constraint**:
    - Write a migration to add a foreign key constraint between `products` and `categories`.
    - I only add new tables if I think it is neccessary for the exercise. I can do this exercise also for orders-users and orders-products.
    - Foreign key constraints get added by default. Difficult to think of an example where they should be added manually.

15. **Create a View**:
    - Generate a migration to create a database view that combines data from multiple tables.

16. **Add a Unique Index**:
    - Create a migration to add a unique index on the `sku` column in the `products` table.

17. **Custom SQL**:
    - Write a migration that executes custom SQL statements (e.g., updating existing data).

18. **Change Column Order**:
    - Modify the order of columns in the `orders` table.

19. **Add a Check Constraint**:
    - Create a migration to enforce a check constraint on the `quantity` column in the `order_items` table.

20. **Rollback All Migrations**:
    - Write a migration to revert all previous migrations and start fresh.