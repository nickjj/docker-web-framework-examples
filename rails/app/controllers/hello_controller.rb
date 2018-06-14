
class HelloController < ApplicationController
  def home
    render html: "Hello world with RAILS_ENV=#{ENV['RAILS_ENV']}"
  end
end
