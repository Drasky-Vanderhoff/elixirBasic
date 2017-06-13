# defmodule Fib do
#  #Write documentation with moduledoc and doc. Attach the document created
#
#   def fib(acc, n) do
#     #?
#   end
# end
#
#
# ExUnit.start
#
# defmodule RecursionTest do
#   use ExUnit.Case
#
#   import Fib
#
#   test "fibonacci" do
#     assert fib(0) == []
#     assert fib(1) == [0]
#     assert fib(2) == [0, 1]
#     assert fib(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
#   end
#
#
#   test "benchmark" do
#     {microsecs, _} = :timer.tc fn -> fib(1000) end
#     IO.puts "fib() took #{microsecs} microsecs"
#     #Write a second way and make it faster than the first one.
#     """
#     {microsecs, _} = :timer.tc fn -> fibOther(1000) end
#     IO.puts "fibOther() took #{microsecs} microsecs"
#     """
#   end
# end
