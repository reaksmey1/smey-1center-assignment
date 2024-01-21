require 'rails_helper'

RSpec.describe Api::PrimeNumbersController, type: :request do
    describe 'GET /api/prime_numbers/calculate' do
        it 'should return an error for invalid input' do
            get '/api/prime_numbers/calculate', params: {max_number: -100}
            expect(response).to have_http_status(422)
        end
    end
end