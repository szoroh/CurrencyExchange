class FixDayIdOnCurrencies < ActiveRecord::Migration[6.0]
  def change
    rename_column :currencies, :days_id, :day_id
  end
end
