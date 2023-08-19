# ruleid: map-into
%{a: 1}
|> Enum.into(%{}, fn {k, v} -> {k, v * 2} end)

# ruleid: map-into
%{a: 1}
|> Enum.into(%{}, fn {k, v} -> {k, v * 2} end)

# ruleid: map-into
%{a: 1}
|> Enum.filter(fn {k, _v} -> k == :a end)
|> Enum.into(%{}, fn {k, v} -> {k, v * 2} end)
