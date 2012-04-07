def find_item(target, items)
  items.each_with_index do |item, idx|
    return idx if item == target
  end

  return -1
end

def find_min(items)
  min_item = items[0]

  items.drop(1).each do |item|
    min = min min_item, item
  end

  min_item
end

def find_two_min(items)
  min1, min2 = items.take 2

  items.drop(2).each do |item|
  end
end

def find_k_min(k, items)
  min_items = items.take k

  items.drop(k).each do |item|
    # how long will this take ?
    max, max_idx = min_items.each_with_index.max

    min_items[max_idx] = item if item < max
  end
end

def find_closest_pair(items)
end
