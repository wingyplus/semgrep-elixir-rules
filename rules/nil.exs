var = nil

# ruleid: is-nil-check
var == nil

# ruleid: is-nil-check
if var == nil do
  :ok
end

# ruleid: not-is-nil-check
var != nil

# ruleid: not-is-nil-check
if var != nil do
  :error
end
