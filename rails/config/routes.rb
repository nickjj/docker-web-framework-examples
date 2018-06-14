Rails.application.routes.draw do
  # For details on the DSL available within this file:
  #   see http://guides.rubyonrails.org/routing.html

  root to: 'hello#home'

  # Set up a custom health check endpoint (no controller needed).
  get '/healthy', to: ->(_) { [200, {}, ['']] }
end
