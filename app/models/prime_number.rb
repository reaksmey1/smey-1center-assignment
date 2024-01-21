class PrimeNumber < ApplicationRecord
    require 'prime'

    attr_accessor :max_number

    def invalid_input?
        self.max_number <= 0
    end
end
