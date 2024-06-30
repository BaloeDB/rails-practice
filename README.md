1. **Presence Validation**:
   - Create a new model called `User` with an attribute `username`. Add a validation to ensure that the `username` is present.
   - Test the validation by creating a user without a `username`.

2. **Length Validation**:
   - Add a validation to the `User` model to ensure that the `username` is between 3 and 20 characters long.
   - Test the validation with both valid and invalid usernames.

3. **Uniqueness Validation**:
   - Create a new model called `Article` with an attribute `title`.
   - Add a validation to ensure that the `title` is unique across all articles.
   - Test the uniqueness validation by creating articles with duplicate titles.

4. **Custom Validation Method**:
   - Add a custom validation method to the `Article` model that checks if the `published_date` is in the future.
   - Test the custom validation by creating an article with a future date.

5. **Conditional Validation**:
   - Extend the `Article` model to include an attribute `published`.
   - Add a validation to ensure that the `published_date` is present only if the article is marked as published.
   - Test the conditional validation by toggling the `published` attribute.

6. **Numericality Validation**:
   - Create a `Product` model with an attribute `price`.
   - Add a validation to ensure that the `price` is a positive number.
   - Test the validation with valid and invalid prices.

7. **Format Validation**:
   - Add a validation to the `User` model to ensure that the `email` follows a valid email format.
   - Test the validation with different email addresses.

8. **Custom Error Messages**:
   - Customize the error messages for the `User` model's validations (e.g., "Username cannot be blank").
   - Test the custom error messages by triggering validation errors.

9. **Combining Validations**:
   - Combine presence, length, and uniqueness validations for the `User` model's `username`.
   - Test various scenarios to ensure all validations work together.

10. **Associations and Validations**:
    - Create a `Comment` model that belongs to an `Article`.
    - Add a validation to ensure that the comment's content is present.
    - Test the validation by creating comments without content.

11. **Inclusion Validation**:
    - Extend the `Product` model to include a `category` attribute (e.g., "Electronics," "Clothing").
    - Add a validation to ensure that the `category` is one of the predefined options.
    - Test the validation with different category values.

12. **Custom Validation Logic**:
    - Create a custom validation method in the `User` model that checks if the username contains at least one uppercase letter.
    - Test the validation with various usernames.

13. **Skipping Validations**:
    - Learn how to skip validations using `save(validate: false)` and `update_columns`.
    - https://guides.rubyonrails.org/active_record_validations.html#skipping-validations
    - https://alexbarret.com/blog/2021/skip-existing-validations-in-rails/
    - Discuss scenarios where skipping validations might be necessary.
    - Skipping validations directly is not a good idea. But skipping validations for certain conditions is a good practice. You can do this by using unless/if and contexts.

<!-- 14. **Callbacks and Validations**:
    - Explore how callbacks (e.g., `before_save`, `after_validation`) interact with validations.
    - Create a callback that modifies an attribute before saving. -->

15. **Scoped Validations**:
    - Add a validation to the `Comment` model to ensure that comments are unique within an article.
    - Test the validation by creating duplicate comments within the same article.

16. **Conditional Validation Logic**:
    - Create a custom validation method in the `Article` model that checks if the `published_date` is within a specific range.
    - Test the validation with different dates.

17. **Validation Groups**:
    - Organize validations into groups (e.g., `on: :create`, `on: :update`).
    - Discuss when to use each group.

18. **Validating Associated Models**:
    - Ensure that an `Author` model has at least one associated `Book`.
    - Add a validation to the `Author` model to enforce this.

19. **Handling Validation Errors in Controllers**:
    - Learn how to handle validation errors in controller actions (e.g., rendering the form with error messages).

20. **Testing Validations**:
    - Write unit tests for your model validations using tools like RSpec or MiniTest.
    - Verify that validations behave as expected.