class Book < ActiveRecord::Base
    has_many :reviews
    has_many :readers, through: :reviews
    
    def write_review(reader, rating, review_comment)
        Review.create(reader_id: reader.id, book_id: self.id, rating: rating, review_comment: review_comment)
    end

    def delete_review(reader)
        review = self.reviews.find_by(reader_id: reader.id)
        if review
            review.destroy
        else
            "This reader did not review this book"
        end
    end

    def print_all_reviews
        reviews.map do |review|
            puts "#{review.rating} #{review.review_comment}"
        end
    end


    def rating
        (reviews.sum(:rating) / reviews.count).to_f
        # reviews.average.(:rating).to_f
    end


    def self.most_reviewed 
        most_reviewed_book = Book.first
        reviews = 0

        Book.all.each do |book|
            if book.reviews.count > reviews
                 most_reviewed_book = book
                 reviews = book.reviews.count
            end
        end

        return most_reviewed_book

        # Book.joins(:reviews).group(:name).order("reviews desc")

        # Book.includes(:reviews).group(count(reviews))
    end

    def self.highest_ratings 
        most_rated_book = Book.first

        highest_rating = 0

        Book.all.each do |book|
            if book.rating > highest_rating
                highest_ratings = book.rating
                most_rated_book = book
            end
        end

        return most_rated_book

    end

    def self.best_selling_author
        puts "#{Book.most_reviewed.author} has the highest number of reviews"
    end
end