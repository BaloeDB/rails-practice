# Test Cases

## User Tests
1. Test creation of `User` model.
2. Test migration adding `username` to `User`.
3. Test `name` presence validation in `User`.
4. Test `email` uniqueness validation in `User`.
5. Test `email` downcasing before save.
6. Test new `User` instance creation.
7. Test retrieval of created `User`.
8. Test `name` update for `User`.
9. Test deletion of `User`.
10. Test `User` scope for `name`.
11. Test `User` method for `Post` count.

## Post Tests
12. Test creation of `Post` model.
13. Test migration adding `user_id` to `Post`.
14. Test `User`-`Post` association.
15. Test new `Post` creation with `User`.
16. Test retrieval of `User`'s `Post`s.
17. Test `title` update for `User`'s `Post`.
18. Test deletion of `User`'s `Post`.
19. Test `Post` scope for `title`.
20. Test `Post` method for word count.