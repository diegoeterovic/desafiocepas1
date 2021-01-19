class Strain < ApplicationRecord
    has_many :blends
    has_many :wines, through: :blends

    accepts_nested_attributes_for
end
