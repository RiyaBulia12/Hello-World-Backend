class GreetingController < ApplicationController
  def index
    random_num = rand(1..5)
    @greeting = Greeting.select(:text).where(id: random_num)
    render json: @greeting
  end
end
