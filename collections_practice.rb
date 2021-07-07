# your code goes here
require "pry"

def begins_with_r(array)
  comparer = []
  array.each do |item|
    if item[0] == "r"
      comparer.push(item)
    end
  end
  if comparer == array
    true
  else
    false
  end
end

def contain_a(array)
  number_of_a = []
  containing_a = []
    array.each do |item|
      number_of_a.push(item.count("a"))
    end
    x = 0
    number_of_a.each do |item|
      if item > 0
        containing_a.push(array[x])
      end
      x += 1
    end
  containing_a
end

def first_wa(array)
  array.find do |item|
    item[0] == "w" && item[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class == Fixnum || item.class == Float || item.class == Array || item.class == Hash || item.class == TrueClass || item.class == FalseClass || item.class == Symbol
  end
  array
end

def count_elements(array)
array_with_count = array.uniq
  array_with_count.each do |hash|
      element_count = 0
      y = 0
      while y < array.length
        if hash == array[y]
          element_count += 1
        end
        y += 1
      end
    hash[:count] = element_count
  end
array_with_count
end

def merge_data(array1, array2)
merged_array = array1

  merged_array.each do |merged_items|
    array2.each do |item|
      item.each do |name, attributes|
      if merged_items[:first_name] == name
          attributes.each do |attribute, value|
            merged_items[attribute] = value
        end
        end
      end
    end
  end
merged_array
end

def find_cool(cool)
  cool_array = []
    cool.each do |item|
      item.each do |attribute, value|
    if value == "cool"
          cool_array << item
        end
      end
    end
cool_array
end

def organize_schools(schools)
organized_schools = {}
  schools.each do |type, location|
    organized_schools[location[:location]] = []
  end
  schools.each do |type, location|
    organized_schools[location[:location]] << type
  end
organized_schools
end
