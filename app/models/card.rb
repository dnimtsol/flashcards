# frozen_string_literal: true

class DifferentValidator < ActiveModel::Validator
  def hlm(data)
    data.delete(' ').downcase
  end
  def validate(record)
    if hlm(record.original_text) == hlm(record.translated_text)
      record.errors[:base] << "must not be the same"
    end
  end

end

class Card < ApplicationRecord
  validates :original_text, :translated_text, :review_date, presence: true
  validates_with DifferentValidator

  before_create :set_review_date

  private
   def set_review_date
      self.review_date = Date.today+3
   end
end

