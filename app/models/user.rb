class User < ApplicationRecord
    has_many :games, dependent: :destroy
    accepts_nested_attributes_for :games
end
