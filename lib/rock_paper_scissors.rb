class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    valid_strategies = ["R", "P", "S"]
    p1 = player1[1]
    p2 = player2[1]
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless valid_strategies.any? { |strat| p1 == strat } and valid_strategies.any? { |strat| p2 == strat }
    if (p2 == "R" and p1 == "S") or (p2 == "P" and p1 == "R") or (p2 == "S" and p1 == "P")
      return player2
    else
      return player1
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0].is_a?(String)
      return tournament
    end
    winner1 = tournament_winner(tournament[0])
    winner2 = tournament_winner(tournament[1])
    return winner(winner1, winner2)
  end

end
