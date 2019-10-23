defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck make 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
    refute deck == Cards.shuffle(deck)
  end
end

# extra: maps

#colors = %{primary: "red", secondary: "blue"}
#%{secondary: secondary_color} = colors # define secondary_color
#Map.put(colors, :primary, "blue") # update value of primary key
#%{ colors | primary: "blue" } # return new map
## %{colors | secondary_color: "green"} # cause error
#Map.put(colors, :secondary_color, "green") # add value

# extra: keyword lists

#colors = [{:primary, "red"}, {:secondary, "green"}]
#colors[:primary]
#colors = [primary: "red", secondary: "blue"]
#colors = [primary: "red", primary: "blue"] # create two individual values
