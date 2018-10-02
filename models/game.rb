class Game

  def self.play(hand1,hand2)

    if hand1 == "rock"
      if hand2 == "rock"
        return "draw"
      elsif hand2 == "paper"
        return "player 2 wins"
      elsif hand2 == "scissors"
        return "player 1 wins"
      end

    elsif hand1 == "paper"
      if hand2 == "rock"
        return "player 1 wins"
      elsif hand2 == "paper"
        return "draw"
      elsif hand2 == "scissors"
        return "player 2 wins"
      end

    elsif hand1 == "scissors"
      if hand2 == "paper"
        return "player 1 wins"
      elsif hand2 == "scissors"
        return "draw"
      elsif hand2 == "rock"
        return "player 2 wins"
      end

    end
  end
end
