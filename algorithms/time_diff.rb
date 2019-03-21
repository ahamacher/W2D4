require 'byebug'

# --------------------------------------------- # 
# Find min elements 

def my_min_1(arr)
  #find min number of all ele
  #use a to / for loop
  #compare min vs element in the array we itterating through
  min = arr[0]
  arr.each do |ele1|
    arr.each do |ele2|
      if ele1 < min || ele2 < min
        if ele1 < ele2 then min = ele1 else min = ele2 end
      end
    end
  end
  min
end

arr = [ 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min_1(arr) == -5

def my_min_2(arr)
    min = arr[0] 
    arr.each do |ele|
      min = ele if ele < min  
    end
    min
end

arr = [ 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min_2(arr) == -5

# --------------------------------------------- # 
# Largest Contigous Sub-Sum # 

def sums(nested_arr)
  max = 0 
  nested_arr.each do |sub_arr|
    sub_sum = sub_arr.inject(&:+)
    max = sub_sum if sub_sum > max
  end
  max
end

def sub_sum_1(arr)
  subs = []
  arr.each_with_index do |ele1, i|
    arr.each_with_index do |ele2, j|
      if j > i
        subs << arr[i..j]
      end
    end
  end
  max = sums(subs)
end

arr = [5, 3, -7]
# puts sub_sum_1(arr) == 8 
arr2 = [2, 3, -6, 7, -6, 7]
# puts sub_sum_1(arr2) == 8 

def sub_sum_2(arr)
  max_ending = arr[0]
  max_sub_sum = arr[0]
  i = 1
  while i <= arr.length - 1
    max_ending = max( arr[i], max_ending + arr[i] )
    max_sub_sum = max( max_sub_sum, max_ending )
    i += 1
  end
  max_sub_sum
end

def max(a, b)
  a > b ? a : b
end

list = [2, 3, -6, 7, -6, 7]
puts sub_sum_2(list) == 8


