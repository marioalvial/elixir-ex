defmodule HandlerTest do
  use ExUnit.Case
  doctest Handler

  test "create_hand with the same size passed as function argument" do
    {hand, _} = Handler.create_hand(2)
    assert length(hand) == 2
  end
end
