puts 'creating books...'
Book.create(title: "A year of rest and relaxation", author: "Ottessa")
Book.create(title: "I'm glad my mom died", author: "Jennette")
Book.create(title: "Blowing my way to the top", author: "Jen atkin")
Book.create(title: "Ur mom", author: "ur dad")
puts 'creating readers...'
Reader.create(name: "Siobhan")
Reader.create(name: "George")
Reader.create(name: "Steven")
Reader.create(name: "Maria")
puts 'creating reviews...'
Review.create(book_id: 2, reader_id: 1, rating: 5, review_comment: "read in one day, loved it")
Review.create(book_id: 2, reader_id: 3, rating: 5, review_comment: "so good")
Review.create(book_id: 1, reader_id: 2, rating: 3, review_comment: "ummm wtf was this")
Review.create(book_id: 4, reader_id: 4, rating: 5, review_comment: "yuhhhh")
Review.create(book_id: 3, reader_id: 1, rating: 5, review_comment: "i love her")
Review.create(book_id: 2, reader_id: 2, rating: 5, review_comment: "powerful messages")
Review.create(book_id: 1, reader_id: 1, rating: 5, review_comment: "other person didnt get this book, dumb")

puts "seeding done!!"
