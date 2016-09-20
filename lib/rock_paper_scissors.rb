class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if player1[1] != /[RPS]/ or player2 != /[RPS]/
      raise NoSuchStrategyError
    end
    
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
