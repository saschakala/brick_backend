class User < ApplicationRecord
    has_many :games, dependent: :destroy
    validates :name, presence: true, uniqueness: true
end
