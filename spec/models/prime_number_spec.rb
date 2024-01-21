require 'rails_helper'

RSpec.describe PrimeNumber, type: :model do
  it "return invalid if number input is negative" do
    prime_number = PrimeNumber.new(max_number: -1)
    invalid = prime_number.invalid_input?
    expect(invalid).to eq(true)
  end
end
