# frozen_string_literal: true

# DifferentValidator class
class DifferentValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:base] << I18n.t(:notsame) if hlm(record.original_text) == hlm(record.translated_text)
  end

  private

  def hlm(data)
    data.delete(' ').downcase unless data.nil?
  end
end
