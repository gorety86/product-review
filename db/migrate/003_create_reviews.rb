class CreateReviews < ActiveRecord::Migration[6.1]
    def change
        create_table :reviews do |t|
            t.string :name
            t.integer :star_rating
            t.string :comment
        end

    end
end