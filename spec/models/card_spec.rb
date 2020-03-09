require 'spec_helper'

RSpec.describe Card, type: :model do
  describe 'validation' do
    let(:card) { Card.new(original_text: 'Курица', translated_text: 'chiken', review_date: Date.today) }
    subject { card }
    it 'valid' do
      is_expected.to be_valid
    end

    it 'correct time ' do
      expect(subject.send(:set_review_date)).to eq Date.today + 3
    end
  end
end
