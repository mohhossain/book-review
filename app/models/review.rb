class Review < ActiveRecord::Base
    belongs_to :reader
    belongs_to :book


    def show_review
        puts "Review for #{book.title} by #{book.author}: #{rating}. #{self.review_comment}"
    end
end