def nyc_pigeon_organizer(data)
  
  
  names = make_array(data)
  
  pigeon_friends = make_hash(data, names)
  
  return
  
  
  
end


def make_array(hash_data)
  
  names_array = []
  
  hash_data.each do |key,value|
    value.each do |att, names|
      names_array.push(names) 
    end
  end
  
   #names_array is filled as an AoA and 1. needs to be flattened and 2. duplicates removed
   
   names_array.flatten!
   names_array.uniq!
  
  return names_array
  
end

def make_hash(original_data, array_of_names)
  
  new_hash = {}
  
  array_of_names.each do |name|
    
    new_hash[name] = {:color => [], :gender => [], :lives => []}
    
  end
  
  #compare the names with their occurances in the original_data hash to fill in the new_hash
  
  original_data.each do |key, value|
    
    value.each do |detail, names|
      
      #compare with names_array to get a true or false value
      #if true, add that detail as a string to the array value of new_hash[name_key][attribute_name]
      
      i = 0
      while i < array_of_names.length do
        j = 0
        while j < names.length do
          if array_of_names[i] == names[j]
            new_hash[array_of_names[i]][key].push(detail.to_s)
          end
        end
      end
      
    end #value.each end
    
  end #original_data.each end
  
  
  return new_hash
  
  
end #make_hash method end