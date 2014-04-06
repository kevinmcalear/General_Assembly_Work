require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def values
    card_values = {
      "A" => 1, 
      "T" => 1, 
      "J" => 11, 
      "Q" => 12, 
      "K" => 13,
      "10"=> 10,
      "9" => 9,
      "8" => 8,
      "7" => 7,
      "6" => 6,
      "5" => 5,
      "4" => 4,
      "3" => 3,
      "2" => 2,
    }
    
    @cards.map do |card|
      card_values[card[0]]
    end
  end

  def suits
    @cards.map do | card |
      card[1]
    end
  end

  def straight?
    ordered_values = values.sort
    is_straight = true
    ordered_values.each_with_index do |value, index| 
      if index > 0
        if value != (ordered_values[index - 1] + 1)
          is_straight = false
        end
      end
    end
    is_straight
  end

  def flush?
    is_flush = true
    suits.each_with_index do |suit, index| 
      if index > 0
        if suit != (suits[index - 1])
          is_flush = false
        end
      end
    end
    is_flush
  end

  def full_house?
    ordered_values = values.sort
    if values.count(ordered_values[0]) == 2
      if values.count(ordered_values[-1]) == 3
        true
      end
    elsif values.count(ordered_values[-1]) == 2
      if values.count(ordered_values[0]) == 3
        true
      end
    else
      false
    end


  end

  def four_of_a_kind?
    ordered_values = values.sort
    if ordered_values[0] == ordered_values[1] && ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3]
      true
    elsif ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3] && ordered_values[3] == ordered_values[4]
      true
    else
      false
    end
  end

  def best_hand
    ordered_values = values.sort
    is_straight = true
    ordered_values.each_with_index do |value, index| 
      if index > 0
        if value != (ordered_values[index - 1] + 1)
          is_straight = false
        end
      end
    end
    is_flush = true
    suits.each_with_index do |suit, index| 
      if index > 0
        if suit != (suits[index - 1])
          is_flush = false
        end
      end
    end

    if is_straight && is_flush
      "Straight Flush"
    elsif four_of_a_kind?
      "Four of a Kind"
    elsif full_house?
      "Full House"
    elsif flush?
      "Flush"
    elsif straight?
      "Straight"
    else
      "Not much"
    end
  end

end



