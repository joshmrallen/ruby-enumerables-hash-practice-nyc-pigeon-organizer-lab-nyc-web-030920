def nyc_pigeon_organizer(data)
  
  
  make_array(data)
  
  
end


def make_array(hash_data)
  
  names_array = []
  
  hash_data.each do |key,value|
    key.each do |att, names|
      names_array.push(names) 
    end
  end
  
  return names_array
  
end