class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      t.belongs_to :days

      t.integer :currency_code
      t.float :worth

      t.timestamps
    end
  end
end
