class Airline < ApplicationRecord
  has_many :reviews

  before_create :slugify
  before_update :slugify

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    return 0 unless reviews.count.positive?

    reviews.average(:score).to_f.round(2)
  end
end