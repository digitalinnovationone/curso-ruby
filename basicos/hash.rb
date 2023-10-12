hash = {}
puts hash.inspect
hash = Hash.new
puts hash.inspect
puts "-----------------------"

hash = Hash.new("default_value")
puts hash.inspect
puts "-----------------------"

hash = {"key1" => "value1", "key2" => "value2"}
puts hash["key2"]
puts hash.inspect
hash["key3"] = "value3"
puts hash.inspect
puts "-----------------------"

hash = {}
hash["nome"] = "João"
puts hash.inspect
puts "-----------------------"

hash = {"key1" => "value1", "key2" => "value2"}
hash["key3"] = "value3"
puts hash.keys.inspect  # => ["key1", "key2", "key3"]
puts hash.values.inspect  # => ["value1", "value3", "value3"]

puts "-----------------------"

hash.each do |key, value|
    puts "#{key}: #{value}"
end

puts "-----------------------"

hash2 = {"key4" => "value4"}
combined_hash = hash.merge(hash2)

puts combined_hash.inspect

puts "-----------------------"
puts hash.inspect
puts hash.fetch("key5", "default_value_for_key5") # => default_value_for_key5
puts hash.fetch("key3", "default_value_for_key5") # => value3
puts hash.fetch("key3") # => value3
puts hash.fetch("key5", nil) # => nil
puts "-----------------------"

puts hash.has_key?("key1")  # => true
puts hash.has_key?("key10")  # => false

puts "-----------------------"
puts hash.has_value?("value2")  # => true
puts hash.has_value?("value20")  # => false

puts "-----------------------"
puts hash.inspect
hash.delete("key3")
puts hash.inspect
puts "-----------------------"

puts hash.inspect  # => {"key1"=>"value1", "key2"=>"value2"}
puts hash.invert.inspect  # => {"value1"=>"key1", "value2"=>"key2"}
puts "-----------------------"
puts hash.to_a.inspect  # => [["key1", "value1"], ["key2", "value2"]]


puts "-----------------------"
hash = {:key1 => "value1", :key2 => "value2"}
hash[:key3] = "value3"
puts hash.inspect
puts hash[:key2]

puts "-----------------------"
hash = {key1: "value1", key2: "value2"}
hash[:key3] = "value3"
puts hash.inspect
puts hash[:key2]


puts "-----------------------"
hash = {"key1" => "value1", "key2" => "value2"}
hash["key3"] = "value3"
puts hash.inspect
puts hash["key2"]