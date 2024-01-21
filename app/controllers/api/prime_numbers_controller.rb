class Api::PrimeNumbersController < ApplicationController
    def calculate
        prime_number = PrimeNumber.new(max_number: params[:max_number].to_i)

        if prime_number.invalid_input?
            render json: {error: 'Invalid Input: Max number should be positive.'}, status: :unprocessable_entity
            return
        end
    end
end
