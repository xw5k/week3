class IdcardsController < ApplicationController

  def landmarks

  end

  def index
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

    @cards = [person1, person2]
    # render(text: "<html><h1>#{greeting}!</h1><p>It rained a bit.</p></html>")
  end

end
