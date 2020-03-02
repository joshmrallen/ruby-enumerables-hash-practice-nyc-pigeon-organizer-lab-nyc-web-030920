def nyc_pigeon_organizer(data)
  
  
  make_array(data)
  
  
  
  
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