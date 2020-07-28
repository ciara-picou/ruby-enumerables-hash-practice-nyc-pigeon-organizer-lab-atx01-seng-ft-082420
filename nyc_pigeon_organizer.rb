def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, names|
       names.each do |name|
         if!final_array[name]
           final_array[name] = {}
         end
      if!final_array[name][key]
        !final_array[name][key] = []
      end
    final_array[name][key].push(inner_key.to_s)
      end
    end
  end


#   my original attempt: 
# $pigeon_array = []
# $pigeon_list = Hash.new

# def create_pigeon_name_hash(data)
# data.each do |pigeon_info_hash , pigeon_info_details_hash|
  
#     pigeon_info_details_hash.each do|info_key , value_array|
#       value_array.each do |pigeon_name|
#           $pigeon_array.push(pigeon_name)
#     end
#   end
# end
# $pigeon_array.uniq!
# $pigeon_list = Hash[$pigeon_array.collect{|item| [item, {} ]}]
# $pigeon_list

# end

# def nyc_pigeon_organizer(data)
#   create_pigeon_name_hash(data)
#   $pigeon_list
# end

# to create a new hash from an old one using map
# hash = {a: 2, b: 3}
# hash.map { |k, v| [k, v + 3] }.to_h     # => { a => 5, b => 6 }


# to create a new hash from an old one using each_with_object
# hash = { a: 2, b: 3 }
# hash.each_with_object({}) do |(k, v), a|
# a[k] = v + 3
# end                   # => { a => 5, b => 6 }