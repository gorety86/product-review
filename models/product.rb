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
        self.all.each do |rev|
         rev.print_review
        end
    end
end