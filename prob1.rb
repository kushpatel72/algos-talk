# problem 1
def find(target, items)
  for i in (0..items.size())
    return i if items[i] == target
  end

  return -1
end
