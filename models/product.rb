class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(
            star_rating: star_rating,
            comment: comment,
            user: user,
            product: self
        )
    end

    def print_all_reviews
        Review.all.each do |review|
         review.print_review
        end
    end

    def average_rating
        all_ratings = []
        Review.all.map do |rev|
         all_ratings << rev.star_rating
        end
        all_ratings.sum.to_f/all_ratings.count
    end
end