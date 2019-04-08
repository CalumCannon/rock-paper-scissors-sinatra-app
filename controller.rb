require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game.rb')


# Add a controller to allow /add/3/2 returns 5
get "/game/:first/:second" do
  @game = Game.new(params['first'], params['second'])
  @result = @game.calculate()
  # binding.pry
  return erb (:result)
end

# get "/game/:num1/:num2" do
#   calculator = Calculator.new(params['num1'].to_i, params['num2'].to_i)
#   @calculation = calculator.calculate()
#   return erb (:result)
# end
