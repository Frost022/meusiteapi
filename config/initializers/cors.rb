# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Use '*' to allow all origins, or specify your frontend domain instead

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: false # Set to true if you are using cookies or authentication headers
  end
end
