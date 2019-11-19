require 'rails_helper'

RSpec.describe 'Currency controller', type: :system do
  describe 'index' do
    it 'enables one to list historical data' do
      visit '/currencies'

      expect(page).to have_text('Historical data')
      expect(page).to have_text('Date')
      expect(page).to have_text('Currency code')
      expect(page).to have_text('Value')

      expect(page.current_path).to eq(currencies_path)
    end
  end
end
