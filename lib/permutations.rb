def permutations?(string1, string2)
  return true if string1 == "" && string2 == ""
  return false if string1.length != string2.length

  map = {}
  
  string1.each_char do |char|
    if map[char]
      map[char] += 1
    else map[char] = 1
    end
  end
  
  string2.each_char do |char|
    # if the string character is not in the map, it cannot be a permutation
    if map[char].nil?
      return false
    # if the string character has been counted once, delete it
    elsif map[char] == 1
      map.delete(char)
    # if the string character has been counted more than once, decrement its counter
    else 
      map[char] -= 1
    end
  end

  return map.empty?
end