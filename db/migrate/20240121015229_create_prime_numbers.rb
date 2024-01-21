class CreatePrimeNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :prime_numbers do |t|

      t.timestamps
    end
  end
end
