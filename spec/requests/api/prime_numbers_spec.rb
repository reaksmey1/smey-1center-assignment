require 'swagger_helper'

RSpec.describe 'api/prime_numbers', type: :request do

  path '/api/prime_numbers/calculate?max_number=-10' do

    get('return invalid if max number is negative') do
      response(422, 'Invalid Input: Max number should be positive.') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
