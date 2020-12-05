class Airline < ApplicationRecord
  has_many :reviews
  before_save :slugify

  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
