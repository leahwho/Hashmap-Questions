def intersection(list1, list2)
  
  if list1.length > list2.length
    shortest_list = list2
    other_list = list1
  else
    shortest_list = list1
    other_list = list2
  end
  
  
  map = {}
  shortest_list.each do |num|
    map[num] = true
  end
  
  result = []
  other_list.each do |num|
    if map[num]
      result << num 
    end
  end
  
  return result
end