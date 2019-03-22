
#o(n^2)
def bad_two_sum?(arr, target_sum)
  arr.each_with_index do |num, i|
    arr.each_with_index do |num2, j|
      return true if num + num2 == target_sum && j > i 
    end
  end
  false 
end

arr = [0, 1, 5, 7]
# arr = [0, 3, 3, 7]
# bad_two_sum?(arr, 6) == true # => should be true
# bad_two_sum?(arr, 10) == true # => should be false

#o(n)
def okay_two_sum?(arr, target)
  i = 0
  j = arr.length - 1

  while i < j
    if arr[i] + arr[j] == target
      return true
    elsif arr[i] + arr[j] < target
      i += 1
    else
      j -= 1
    end 
  end
  false
end

p okay_two_sum?(arr, 6) == true
p okay_two_sum?(arr, 10) == false

#o(n)
def two_sum(arr, target)
  complements_hash = Hash.new()
  arr.each_with_index do |el,i|
    complements_hash[el] = i
  end
  i = 0
  while i < arr.length
    complement_exist = complements_hash[target-arr[i]] 
    return true if complement_exist && complement_exist != i
    i += 1
  end
  false 
end

p two_sum(arr, 6) == true
p two_sum(arr, 10) == false