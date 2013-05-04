
require 'hand_evaluator'

class AcpcPokerTypes::PileOfCards < Array
  # @return [Integer] The strength of the strongest poker hand that can be made from this pile of cards.
  def to_poker_hand_strength
    HandEvaluator.rank_hand map { |card| card.to_i }
  end
end
