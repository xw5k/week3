# jeff = { "name" => "Jeff Cohen", "id" => "1001", "expires" => "12/31/13"}
# bob = { "name" => "Bob Smith", "id" => "4253", "expires" => "12/31/14"}

# def display_id_card(card_type, person_info)
#   puts "Card Type: #{2 + 5}"
#   puts "Name: #{person_info[:name]}"
#   puts "ID#: #{person_info[:id]}"
#   puts "Expires: #{person_info[:expires]}"
# end

# # display_id_card "staff", jeff

class Person
  attr_accessor :id
  attr_accessor :name
  attr_accessor :expires
  attr_accessor :role
end

def display_id_card(person_info)
  puts "| Card Type: #{person_info.role}"
  puts "| Name: #{person_info.name}"
  puts "| ID#: #{person_info.id}"
  puts "| Expires: #{person_info.expires}"
  puts "-" * 30
end

person1 = Person.new
person1.name = "Jeff Cohen"
person1.id = "1001"
person1.expires = "12/31/2013"
person1.role = "Alumni"

person2 = Person.new
person2.name = "Bob Smith"
person2.id = "4253"
person2.expires = "12/31/2014"
person2.role = "Student"

display_id_card(person1)
display_id_card(person2)
