class Oenologist < ApplicationRecord

    has_many :wines, through: :reviews
    has_many :reviews
    
end
