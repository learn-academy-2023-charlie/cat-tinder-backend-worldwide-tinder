class Country < ApplicationRecord
    validates :name, :age, :image, presence: true
    validates :hobby, length: {minimum: 10}
end
