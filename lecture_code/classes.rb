# jeff = { :name => "Jeff Cohen", :id => "1001", :expires => "12/31/13"}
# bob = { :name => "Bob Smith", :id => "4253", :expires => "12/31/14"}

# def display_id_card(card_type, person_info)
#   puts "Card Type: #{2 + 5}"
#   puts "Name: #{person_info[:name]}"
#   puts "ID#: #{person_info[:id]}"
#   puts "Expires: #{person_info[:expires]}"
#   return nil
# end

# display_id_card "staff", bob

class IdentificationCard
  attr_accessor :id
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :expires
  attr_accessor :role

  def full_name
    return "#{last_name}, #{first_name}"
  end

end

def display_id_card(id_card)
  puts "| Card Type: #{id_card.role}"
  puts "| Name: #{id_card.full_name}"
  puts "| ID#: #{id_card.id}"
  puts "| Expires: #{id_card.expires}"
  puts "-" * 30
end

person1 = IdentificationCard.new
person1.first_name = "Jeff"
person1.last_name = "Cohen"
person1.id = "1001"
person1.expires = "12/31/2013"
person1.role = "Alumni"

person2 = IdentificationCard.new
person2.first_name = "Bob"
person2.last_name = "Smith"
person2.id = "4253"
person2.expires = "12/31/2014"
person2.role = "Student"

raghu = IdentificationCard.new
raghu.first_name = "Raghu"
raghu.last_name = "Betina"
raghu.id = "4353"
raghu.expires = "13/31/3014"
raghu.role = "Student"

cards = [person1, person2]

cards.each do |card|
  display_id_card(card)
  puts "Done with that card!"
end
puts "All Done!"
# display_id_card(person1)
# display_id_card(person2)
# display_id_card(raghu)









