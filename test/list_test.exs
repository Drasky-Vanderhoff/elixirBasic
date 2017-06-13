defmodule ListTest do
  use ExUnit.Case

  def sample do
    ["Lucho", "Juan Pi", "Carlos", "Isaias", "Ale", "Nico", "Mati", "Ricardo"]
  end

  # TODO: Recibe una lista de argumentos y lo convierte a strings, hace eso con sigils
  # test "sigil" do
  #   assert ~(Lucho "Juan Pi" Carlos Isaias Ale Nico Mati Ricardo) == sample()
  # end

  test "head" do
    assert sample() |> hd == "Lucho"
  end

  test "tail" do
    assert sample() |> tl == ["Juan Pi", "Carlos", "Isaias", "Ale", "Nico", "Mati", "Ricardo"]
  end


  test "last item" do
    assert sample() |> List.last == "Ricardo"
  end

  test "delete item" do
    assert sample() |> List.delete("Carlos") == [
      "Lucho", "Juan Pi", "Isaias", "Ale", "Nico", "Mati", "Ricardo"
    ]
  end

  test "List.fold" do
    list = [20, 10, 5, 2.5]
    assert List.foldl(list, 0, &(&1 + &2)) == 37.5
  end
  #
  #
  test "Enum.reduce" do
    list = [20, 10, 5, 2.5]
    assert Enum.reduce(list, &(&1 + &2)) == 37.5
  end
  #
  #
  # TODO: what do you mean with wrap ?
  # test "wrap" do
  #   assert  #?
  # end
  #
  # # Enum names with contains 'c'
  test "Enum.filter_map" do
     assert sample()
      |> Enum.filter_map(&String.contains?(&1,"c"), &(&1)) == ["Lucho", "Nico", "Ricardo"]
  end
  #
  # TODO: Testea que haga un map testeando con sample
  # test "list comprehension" do
  #   assert #?
  # end
  #
  # #? Create a hug list >1MM and make the revert
  # test "manual reverse speed" do
  #   assert #reversed == Enum.to_list(1MM..1)
  #   IO.puts "manual reverse took #{microsec} microsecs"
  # end
  #
  #  test "speed of inserting at the end of a list" do
  #   assert #reversed == Enum.to_list(1..1MM+1)
  #   IO.puts "inserting at the end of a list took #{microsec} microsecs"
  # end
  #
  # test "Enum.reverse speed" do
  #   assert #reversed == Enum.to_list(1MM..1)
  #   IO.puts "Enum.reverse took #{microsec} microsecs"
  # end
end
