require('pry-byebug')

class Game

  def initialize(first, second)
    @first = first
    @second = second
  end

  def calculate
      list = [@first, @second]
        return "Paper Wins!" if(list.include?("rock") && list.include?("paper"))
        return "Rock Wins!" if(list.include?("rock") && list.include?("scissors"))
        return "Scissors Wins!" if(list.include?("scissors") && list.include?("paper"))
        return "ERROR"
  end

end
