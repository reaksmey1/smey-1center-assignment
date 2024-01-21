require 'rails_helper'

RSpec.describe PrimeNumber, type: :model do
  it "return invalid if number input is negative" do
    prime_number = PrimeNumber.new(max_number: -1)
    invalid = prime_number.invalid_input?
    expect(invalid).to eq(true)
  end

  it "generate array of prime number based on input max value" do
    prime_number = PrimeNumber.new(max_number: 10)
    result = prime_number.generate
    expect(result).to eq([2, 3, 5, 7])
  end

  it "return valid if number input is positive" do
    prime_number = PrimeNumber.new(max_number: 10)
    invalid = prime_number.invalid_input?
    expect(invalid).to eq(false) 
  end

  it "should return the total value based on Prime number input" do
    prime_number = PrimeNumber.new(max_number: 10)
    arr_prime_number = prime_number.generate
    total = prime_number.total(arr_prime_number)
    expect(total).to eq(17)
  end
end
