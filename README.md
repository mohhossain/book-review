# Create migrations

`Book` table should have

- `title` -> string
- `author` -> string

`Reader` table should have

- `name` -> string

`Review` table should have

- Foreign keys
- A `rating` column that stores an integer.
- A `review_comment` column that stores a string.

# Aggregate methods:

#### Review

- `Review#show_review`
  - should `puts` to the terminal a string formatted as follows: `Review for {insert book name} by {insert author name}: {insert review rating}. {insert review_comment}`

#### Book

- `Book#write_review(reader, rating, review_comment)`

  - takes a `Reader` (an instance of the `Reader` class), a `rating` (integer), and a `review_comment` (string) as arguments, and creates a new `Review` in the database associated with this Product and the User

- `Book#print_all_reviews`

  - should `puts` to the terminal a string representing each review for this book

- `Book#rating`

  - returns a `float` representing the average rating for all reviews for this book

- `Book.most_reviewed`

  - returns the book with the most amount of reviews

- `Book.highest_ratings`

  - returns the books that has the highest ratings

- `Book.best_selling_author`
  - returns the author that has the most amount of reviews
  - using `puts` display: `{Author_name} has the highest number of reviews`

#### Reader

- `Reader#most_favorite`

  - returns the book that has the highest ratings from this user

- `Reader#change_review(book, new_rating, new_comment)`

  - takes a `Book` instance as an argument and changes the review of the of the book by the reader if there is any updatng the rating: `new_rating` and review_comment: `new_comment`

  - returns `The reader did not review this book` if the review does not exist

  -
