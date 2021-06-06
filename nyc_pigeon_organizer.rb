def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  names = []
  
  data[:color].each do |key, value|
    names.push(value)
  end
  
  names = names.flatten.uniq
  
  names.each do |name|
    pigeon_list[name] = {}
  end
  
  names.each do |name|
    data.each do |attribute, type|
      type_list = []
      type.each do |key, arr|
        if arr.include? name
          type_list.push(key.to_s)
        end
      end
      pigeon_list[name][attribute] = type_list
    end
  end
  pigeon_list
end
