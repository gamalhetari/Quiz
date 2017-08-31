class Game < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length: (5..300)
end
