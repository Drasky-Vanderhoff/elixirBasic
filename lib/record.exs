# ExUnit.start
#
# defmodule User do
#   #Def struct for a user according to what you believe should contains a user
# end
#
# defimpl String.Chars, for: User do
#   #return any attribute created in the struct
#   def to_string(%User{}) do
#     #return the value
#   end
# end
#
# defmodule RecordTest do
#   use ExUnit.Case
#
#   defmodule ScopeTest do
#     use ExUnit.Case
#
#     require Record
#     #Record.defrecordp ???? Implement quick structrue
#
#     test "defrecordp" do
#       p = person() # regular function call
#       assert p == {:person, "?", "?", ?} # just a tuple!
#     end
#   end
#
#
#   def sampleofTest do
#     %User{} # special % syntax for struct creation
#   end
#
#   test "defstruct" do
#     assert sampleofTest == %{__struct__: User, } # use the struct define
#   end
#
#   test "property" do
#     assert sampleofTest.#? == "?"
#   end
#
#   test "update" do
#     u = sampleofTest
#     u2 = #SampleofTest updated in any of the fields
#     assert u2 == #value updated
#   end
#
#   test "protocol" do
#     assert to_string(sampleofTest) == #?
#   end
# end
#
