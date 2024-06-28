X 1. Create a new Rails application with a model `User` having attributes `name` and `email`.
X 2. Write a migration to add a `username` column to the `User` model.
X 3. Write a validation to ensure the `name` attribute in the `User` model is always present.
X 4. Write a validation to ensure the `email` attribute in the `User` model is unique.
X 5. Write a callback to downcase the `email` attribute before saving a `User` instance.
X 6. Create a new `User` instance and save it to the database.
X 7. Retrieve the `User` instance you just created from the database.
X 8. Update the `name` attribute of the `User` instance you just retrieved.
X 9. Delete the `User` instance you just updated from the database.
X 10. Create a model `Post` with attributes `title` and `content`.
X 11. Write a migration to add a `user_id` column to the `Post` model.
X 12. Establish a one-to-many association between the `User` and `Post` models.
X 13. Create a new `Post` instance associated with a `User` instance.
X 14. Retrieve all `Post` instances associated with a `User` instance.
X 15. Update the `title` attribute of a `Post` instance associated with a `User` instance.
X 16. Delete a `Post` instance associated with a `User` instance.
X 17. Write a scope in the `User` model to retrieve all users with a specific `name`.
X 18. Write a scope in the `Post` model to retrieve all posts with a specific `title`.
X 19. Write a method in the `User` model to calculate the number of associated `Post` instances.
20. Write a method in the `Post` model to calculate the number of words in the `content` attribute.