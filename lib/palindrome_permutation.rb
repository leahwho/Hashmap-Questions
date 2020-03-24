def palindrome_permutation?(string)
  return true if string == ""

  hash = {}
  string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else hash[char] = 1
    end
  end

  odd_values_count = 0
  hash.values.each do |value|
    if value.odd?
      odd_values_count += 1
    end
  end

  if odd_values_count > 1
    return false
  end

  return true
end