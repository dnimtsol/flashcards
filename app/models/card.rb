# frozen_string_literal: true

# Card class
class Card < ApplicationRecord
  validates :original_text, :translated_text, :review_date, presence: true
  validates_with DifferentValidator

  before_create :set_review_date

  private

  def set_review_date
    self.review_date = Date.today + 3
  end
end
