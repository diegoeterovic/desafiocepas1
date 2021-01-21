class Wine < ApplicationRecord
    has_many :blends
    has_many :reviews
    has_many :strains, through: :blends
    has_many :oenologist, through: :reviews
    accepts_nested_attributes_for :blends

end
