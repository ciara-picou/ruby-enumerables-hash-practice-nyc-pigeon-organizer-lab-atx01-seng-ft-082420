# The viedo solution explained:
# def nyc_pigeon_organizer(data)
#   final_results = data.each_with_object({}) do |(key, value), final_array|
    
#   #This method iterates over each key-value pair and creates a new hash from the passed in data hash. So, the block variable final_array gets assigned to an empty hash. At this point, key points to :color and value points to a hash with a key of :purple and a value which is an array of pigeon names. Our next enumerable will work with the data nested within"value".

#     value.each do |inner_key, names|
#       names.each do |name|
#         if !final_array[name]
#           final_array[name] = {}
           
#   # In the code above, "inner key" points to :purple and "names" points to the array of pigeon names. We use each to iterate over the pigeon names and we use !if to determine whether any given name appears in the final array. This will prevent duplicate names from being added to final_array. If the name has not previously been added, it will be assigned an empty hash.
  
#         end
#       if !final_array[name][key]
#         !final_array[name][key] = []
  
#   #In the code above, final_array[name] points to {:color => []} and final_array[name][key] points to an empty array. 
  
#       end
#     final_array[name][key].push(inner_key.to_s)

# # In the code above we populate the empty array with the values contained within inner key. Keeping in mind that the hash we are supposed to return features strings rather than symbols, we append .to_s to inner_key to ensure that we are returning the proper data type according to our prompt.
#       end
#     end
#   end
  
# end

#   my original attempt: 

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
binding.pry
end



# to create a new hash from an old one using map
# hash = {a: 2, b: 3}
# hash.map { |k, v| [k, v + 3] }.to_h     # => { a => 5, b => 6 }


# to create a new hash from an old one using each_with_object
# hash = { a: 2, b: 3 }
# hash.each_with_object({}) do |(k, v), a|
# a[k] = v + 3
# end                   # => { a => 5, b => 6 }