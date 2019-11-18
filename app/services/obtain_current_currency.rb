class ObtainCurrentCurrency
  def initialize(currency_code)
    @code = currency_code
  end

  def call
    response = HTTParty.get("http://api.nbp.pl/api/exchangerates/rates/a/#{@code}/?format=json")['rates'].first.symbolize_keys
    worth = response[:mid]
    date = response[:effectiveDate]
    day = Day.create(date: date)
    Currency.create(day: day, worth: worth, currency_code: @code)
  end
end
