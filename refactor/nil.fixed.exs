var = nil

# ruleid: is-nil-check
is_nil(var)

# ruleid: is-nil-check
if is_nil(var) do
  :ok
end

# ruleid: not-is-nil-check
not is_nil(var)

# ruleid: not-is-nil-check
if not is_nil(var) do
  :error
end
