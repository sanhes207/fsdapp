require_relative 'config/environment'
use Rack::Cors do
allow do
origins '*'

resource '*',
headers: :any,
methods: [:get, :post, :put, :patch]
end
end
run Rails.application
