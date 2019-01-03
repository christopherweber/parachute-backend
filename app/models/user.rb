class User < ApplicationRecord
    has_many :likes
    has_many :flights, through: :likes
end
