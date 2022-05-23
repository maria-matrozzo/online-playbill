class Show < ApplicationRecord
    has_many :reviews

    def avg_score
        reviews.average(:score).to_f
    end

end
