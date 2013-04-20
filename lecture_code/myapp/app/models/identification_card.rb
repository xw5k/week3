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
