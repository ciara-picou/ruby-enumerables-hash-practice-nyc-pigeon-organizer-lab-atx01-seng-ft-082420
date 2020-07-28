
  require "pry"
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
$pigeon_array.uniq!
$pigeon_list = Hash[$pigeon_array.collect{|item| [item, {} ]}]
$pigeon_list

end

def nyc_pigeon_organizer(data)
  create_pigeon_name_hash(data)
  $pigeon_list.map do |lil_pidgies,values|
    binding.pry
    lil_pidgies.each_with_object)({}) do ||
  end
  $pigeon_list
end
# hash = {a: 2, b: 3}
# hash.map { |k, v| [k, v + 3] }.to_h     # => { a => 5, b => 6 }


# to create a new hash fro an old one
# hash = { a: 2, b: 3 }
# hash.each_with_object({}) do |(k, v), a|
# a[k] = v + 3
# end                   # => { a => 5, b => 6 }