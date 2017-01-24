class Game < ApplicationRecord
  validates :players, numericality: {greater_than_or_equal_to: 0}

  def add_player
    @players += 1
  end

  def remove_player
    raise RuntimeError.new "No more player to be removed" if @players <= 0
    @players -= 1
  end

end
