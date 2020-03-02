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
  
  
end