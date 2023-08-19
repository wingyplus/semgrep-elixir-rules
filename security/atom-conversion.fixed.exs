# ruleid: unsafe_string_to_atom
String.to_existing_atom("an_atom")

# ruleid: unsafe_string_to_atom_pipe
"an_atom"
|> String.to_existing_atom()

# ruleid: unsafe_string_to_atom_pipe
"an_atom"
|> String.upcase()
|> String.to_existing_atom()

# ruleid: unsafe_list_to_atom
List.to_atom(~c"Elixir")

# ruleid: unsafe_list_to_atom
~c"Elixir"
|> List.to_atom()

# ruleid: unsafe_binary_to_atom
:erlang.binary_to_atom("an_atom")

# ruleid: unsafe_binary_to_atom
:erlang.binary_to_atom("an_atom", :utf8)

# ruleid: unsafe_binary_to_atom
"an_atom"
|> :erlang.binary_to_atom()

# ruleid: unsafe_binary_to_atom
"an_atom"
# ruleid: unsafe_binary_to_atom
|> :erlang.binary_to_atom(:utf8)
