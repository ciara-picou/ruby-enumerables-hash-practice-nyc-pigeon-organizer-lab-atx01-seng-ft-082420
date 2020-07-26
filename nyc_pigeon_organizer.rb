
  
$pigeon_array = []
$pigeon_list = Hash.new

def create_pigeon_name_hash(data)
data.each do |pigeon_info_hash , pigeon_info_details_hash|
  
    pigeon_info_details_hash.each do|info_key , value_array|
      value_array.each do |pigeon_name|
          $pigeon_array.push(pigeon_name)
     end
  end
end
$pigeon_array.uniq
$pigeon_list = Hash[$pigeon_array.collect{|item| [item, "" ]}]
$pigeon_list

end

def nyc_pigeon_organizer(data)
  create_pigeon_name_hash(data)
  $pigeon_list.map do |lil_pidgies,values|
    values = Hash[data.keys.collect { |values| [values, ""] } ]
 
  end
  $pigeon_list
end
