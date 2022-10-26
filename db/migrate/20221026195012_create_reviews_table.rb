class CreateReviewsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :review_comment
      t.integer :reader_id
      t.integer :book_id
    end
  end
end
