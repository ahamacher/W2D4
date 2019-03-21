# Anagrams.rb 

#o(n!)
def first_anagram?(str1, str2)
  subs = str1.split("").permutation.to_a
  anagrams = subs.map { |sub| sub.join("") }
  anagrams.include?(str2)
end

# puts first_anagram?("iceman","cinema") == true 

#o(n2)
def second_anagram?(str1, str2)
  #itterate though str1
  #at each char has str1's char
  #delete both str1 and str2's char
  str1 = str1.split("")
  str2 = str2.split("")
  i = 0
  while i < str1.length 
    str2_idx = str2.find_index(str1[i])
    if str2_idx
      #str1.delete_at(i)
      str2.delete_at(str2_idx)
      #i = 0 
    end
    i += 1 
  end
  if str2.empty? then true else false end
end

puts second_anagram?("iceman","cinema") == true 

#o(nlogn)
def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

puts third_anagram?("iceman","cinema") == true 


# o(ns)
def fourth_anagram?(str1, str2)
  counts = Hash.new(0)

  str1.each_char do |char|
    counts[char] += 1
  end

  str2.each_char do |char|
    counts[char] -= 1
  end

  counts.each do |k,v|
    return false if v != 0  
  end
  true

end

puts fourth_anagram?("iceman","cinema") == true 

  