# ruleid: map-into
Enum.map(%{a: 1}, fn {k, v} -> {k, v * 2} end)
|> Enum.into(%{})

# ruleid: map-into
%{a: 1}
|> Enum.map(fn {k, v} -> {k, v * 2} end)
|> Enum.into(%{})

# ruleid: map-into
%{a: 1}
|> Enum.filter(fn {k, _v} -> k == :a end)
|> Enum.map(fn {k, v} -> {k, v * 2} end)
|> Enum.into(%{})
