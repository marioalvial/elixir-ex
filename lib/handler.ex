defmodule Handler do

@cards ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine","Ten", "Jack", "Queen", "King", "Ace"]
@suits ["Diamonds", "Spades", "Hearts", "Clubs"]

  def create_hand(hand_size) do
    create_deck()
    |> Enum.shuffle
    |> Enum.split(hand_size)
  end

  defp create_deck do
    Enum.flat_map(@cards, fn card -> create_suits_for_card(card) end)
  end

  defp create_suits_for_card(card)do
    Enum.map(@suits, fn suit -> "#{card} of #{suit}" end)
  end
end
