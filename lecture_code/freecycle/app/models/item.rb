class Item
  attr_accessor :id
  attr_accessor :title
  attr_accessor :address

  def Item.all
    table = Item.new
    table.id = 5
    table.title = "Coffee table"
    table.address = "1901 Sheridan Road"

    guitar = Item.new
    guitar.id = 11
    guitar.title = "Acoustic guitar"
    guitar.address = "728 Foster St."

    tv = Item.new
    tv.id = 14
    tv.title = "27-inch Sony TV"
    tv.address = "1520 Chicago Ave"

    return [table, guitar, tv]
  end

  def Item.find_by_id(id_number)
    id_number = id_number.to_i  # convert to integer just in case
    matching_item = Item.all.detect do |item|
      item.id == id_number
    end

    return matching_item
  end
end
