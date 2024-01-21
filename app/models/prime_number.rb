class PrimeNumber < ApplicationRecord
    require 'prime'

    attr_accessor :max_number

    def invalid_input?
        self.max_number <= 0
    end

    def generate
        primes = []
        sieve = Prime::EratosthenesGenerator.new.take_while { |p| p <= self.max_number }
        primes.concat(sieve)
    end

    def total(prime_numbers)
        sum = 0
        mutex = Mutex.new

        prime_numbers.each_slice(1000) do |chuck|
            threads = chuck.map do |prime|
                Thread.new do
                    mutex.synchronize { sum += prime }
                end
            end
            threads.each(&:join)
        end
        sum
    end
end
