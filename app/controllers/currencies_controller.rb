class CurrenciesController < ApplicationController
  def index
    @all_currencies = Currency.all.order("id desc").includes(:day)
  end
end
