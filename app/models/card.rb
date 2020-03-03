# frozen_string_literal: true

# DifferentValidator class
class DifferentValidator < ActiveModel::Validator
  def hlm(data)
    data.delete(' ').downcase
  end

  def validate(record)
    record.errors[:base] << 'must not be the same' if hlm(record.original_text) == hlm(record.translated_text)
  end
end
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
