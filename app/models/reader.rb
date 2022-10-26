class Reader < ActiveRecord::Base
    has_many :reviews
    has_many :books, through: :reviews
    

    def most_favorite 
        book_id = reviews.order("rating DESC").first.book_id
        Book.find(book_id)
    end

    def change_review(book, new_rating, new_comment)
        review = book.reviews.find_by(reader_id: id)
        if review
            review.update(rating: new_rating, review_comment: new_comment, book_id: book.id, reader_id: self.id)
        else 
            "The reader did not review this book"
        end
    end
end