require 'rails_helper'

RSpec.describe Currency, type: :model do
  let(:currency) { create(:currency) }

  describe 'new currency with correct data' do
    it 'should be valid' do
      expect(currency).to be_valid
    end
  end

  describe 'new currency' do
    it 'is invalid withouth worth' do
      currency.worth = nil
      expect(currency).to be_invalid
    end

    it 'is invalid with string as worth' do
      currency.worth = 'Something'
      expect(currency).to be_invalid
    end

    it 'is invalid without currency code' do
      currency.currency_code = nil
      expect(currency).to be_invalid
    end

    it 'is invalid without day id' do
      currency.day_id = nil
      expect(currency).to be_invalid
    end
  end
end
