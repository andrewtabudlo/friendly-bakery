class Bakery
  attr_accessor :cakes, :cookies, :muffins
  def initialize
    @cakes = {}
    @cookies = {}
    @muffins = {}
  end

  def add_pastry(type, pastry)
    if type == 'cookie'
    @cookies[pastry.name.to_sym] = pastry
    end
  #if pastry exists
    #increment count
  #else
    #add new pastry
    #type << pastry
  end

  def remove_pastry
    #decrement count of selected pastry
  end

  def change_price
    
  end
end

class Pastry
  attr_accessor :type, :name, :image, :description, :ingredients, :price, :qty
  def initialize(type, name, image, description, ingredients, price, qty)
    @type = type
    @name = name
    @image = image
    @description = description
    @ingredients = ingredients
    @price = price
    @qty = qty
  end
end
