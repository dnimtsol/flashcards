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