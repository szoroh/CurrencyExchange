require 'sidekiq-scheduler'

class CurrencyWorker
  include Sidekiq::Worker

  def perform
    Currency.currency_codes.keys.each do |key|
      FirstJob.perform_later(key)
    end
  end
end

class FirstJob
  include Sidekiq::Worker

  def perform(currency_code)
    ObtainCurrentCurrency.new(currency_code).call
  end
end
