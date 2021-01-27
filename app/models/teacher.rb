class Teacher < ApplicationRecord
    has_many :reviews
    before_create :slugify
    # create slugify method create slugify and set that as slug fily and save before we adding to our database
    # takes teacher's name and coverst it to url save slug and sets it as slug value
    # parameterize creates urls safe
    def slugify
        self.slug = name.parameterize
    end

    # get average score to get the review for teachers
    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
