require 'spec_helper'

RSpec.describe Card, type: :model do
  describe 'Card' do
    subject { Card.create(original_text: 'Курица', translated_text: 'Chiken', review_date: Date.today) }
    %i[original_text translated_text review_date].each do |field|
      it { should validate_presence_of(field) }
    end

    it { described_class.validators.map(&:class).include? DifferentValidator }

    it { is_expected.to be_valid }

    it 'correct time ' do
      expect(subject.review_date).to eq Date.today + 3
    end
  end
end
