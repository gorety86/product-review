class User < ActiveRecord::Base
    has_many :reviews
    has_many :product, :through :reviews
end