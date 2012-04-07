# problem 1
def find_item(target, items)
  items.each_with_index do |item, idx|
    return idx if item == target
  end

  return -1
end

# problem 2
def find_min(items)
  min_item = items[0]

  items.drop(1).each do |item|
    min = min min_item, item
  end

  min_item
end

# problem 3
def find_k_min(k, items)
  min_items = items.take k

  items.drop(k).each do |item|
    # how long will this take ?
    max, max_idx = min_items.each_with_index.max

    min_items[max_idx] = item if item < max
  end
end
