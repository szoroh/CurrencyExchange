require 'rails_helper'

RSpec.describe Day, type: :model do
  let(:day) { create(:day) }

  describe 'new day with correct date' do
    it 'should be valid' do
      expect(day).to be_valid
    end
  end

  describe 'new day without date' do
    it 'should be invalid' do
      day.date = nil
      expect(day).to be_invalid
    end
  end
end
