# your code goes here
def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  strings = []
  array.each do |element|
    element.is_a?(String)? strings << element : false 
  end
  strings.find {|element| element.start_with?("wa")}
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  results = []
  array.each do |element|
    hash = Hash.new  
    hash[:count] = array.count(element)
    hash[:name] = element[:name]
    results.push(hash)
  end
   results.uniq
end

def merge_data(data1, data2)
  results = []
  results.push(data1[0].merge(data2[0]["blake"]))
  results.push(data1[1].merge(data2[0]["ashley"]))
  results
end

def find_cool(array)
  array.select {|hash| hash.value?("cool")}
end

def organize_schools(schools)
  hash = {}
  nyc = []
  chicago = []
  sf = []
  schools.collect do |school_name, location|
    if location[:location] == "NYC"
      nyc << school_name
      hash["NYC"] = nyc
    elsif location[:location] == "Chicago"
      chicago << school_name
      hash["Chicago"] = chicago
    else
      sf << school_name
      hash["SF"] = sf
    end
  end
  
  hash
end




