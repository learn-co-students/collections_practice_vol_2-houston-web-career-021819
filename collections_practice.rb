#question 1
def begins_with_r(array)
  array.all? { |word| word[0] == "r"}
end

#question 2 return all elements that contain the letter 'a'
def contain_a(array)
  array.select {|word| word.include?("a")}
end

#question 3 Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.each do |element|
    return array.find {|element| element.to_s.start_with?('wa')}
  end
end
#first_wa(["candy", :pepper, "wall", :ball, "wacky"])

#question 4 remove anything that's not a string from an array
def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end
#remove_non_strings(["blake", 1, :hello]



#questions 5-6


#question 5 count how many times something appears in an array

#array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
def count_elements(array)
     array.uniq.each do |i|
       count = 0
       array.each do |x|
         if x == i
           count += 1
         end
       end
    i[:count] = count
    end
end

#count_elements(array)

#question 6

def merge_data(keys, data)
  merged = []
  keys.each do |key|  #keys: array of key, each key=hash
    data.first.collect do |inner_key,value|
      if key.values[0] == inner_key #hash's values = name
        merged << key.merge(value)
      end
    end
  end
  merged
end


#question 7, find all values equals string "cool"

def find_cool(cool)
  cool.select {|element| element[:temperature]== "cool"}
end


#question 8
def organize_schools(schools)
  organized_schools = {}
  schools.collect {|key,value| organized_schools[value[:location]] = []} #define new hash's value as an empty array

  organized_schools.each do |key,value|
    schools.each do |key1,value1|
      if key == value1[:location]
        value << key1
      end
    end
  end
  organized_schools
end
