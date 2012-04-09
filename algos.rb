def find_item(target, items)
  items.each_with_index do |item, idx|
    return idx if item == target
  end

  -1
end

def find_min(items)
  min_item = items[0]

  items.drop(1).each do |item|
    min_item = min min_item, item
  end

  min_item
end

def find_two_min(items)
  [min1, min2] = items.take 2

  min1, min2 = min2, min1 if min2 < min1

  items.drop(2).each do |item|
    if item < min1
      min2 = min1
      min1 = item
    elsif item < min2
      min2 = item
    end
  end

  [min1, min2]
end

def find_k_min(k, items)
  min_items = items.take k

  items.drop(k).each do |item|
    # how long will this take ?
    max, max_idx = min_items.each_with_index.max

    min_items[max_idx] = item if item < max
  end

  min_items
end

def find_zero_sum_pair(items)
  items.each_with_index do |i1, idx|
    items.each do |i2|
      return [i1, i2] if i1 + i2 == 0
    end
  end

  nil
end

def find_zero_sum_pair2(items)
  item_hash = {}

  items.each do |item|
    item_hash[item] = true
  end

  items.each do |item|
    return [item, -item] if item_hash[-item]
  end

  nil
end
