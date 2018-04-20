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
    elsif type == 'cake'
      @cakes[pastry.name.to_sym] = pastry
    elsif type == 'muffin'
      @muffins[pastry.name.to_sym] = pastry
    end
  end

  #TODO add way to increment and decrement stock qty
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


@friendly_bakery = Bakery.new

#cookies
@chocolate_chip = Pastry.new('cookie', 'Chocolate Chip','images/cookies/chocolate_chip.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
@oatmeal_raisin = Pastry.new('cookie', 'Oatmeal Raisin','images/cookies/oatmeal_raisin.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'rolled oats'], 3, 10)
@peanut_butter_banana = Pastry.new('cookie', 'Peanut Butter Banana','images/cookies/banana.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
@butter_cookie = Pastry.new('cookie', 'Butter Cookie','images/cookies/butter_cookie.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt'], 2, 10)
@almond_cookie = Pastry.new('cookie', 'Almond Cookie','images/cookies/almond.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'almonds'], 3, 10)
@snickerdoodle = Pastry.new('cookie', 'Snickerdoodle','images/cookies/snickerdoodle.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'cinnamon'], 2, 10)
@friendly_bakery.add_pastry('cookie', @chocolate_chip)
@friendly_bakery.add_pastry('cookie', @oatmeal_raisin)
@friendly_bakery.add_pastry('cookie', @peanut_butter_banana)
@friendly_bakery.add_pastry('cookie', @butter_cookie)
@friendly_bakery.add_pastry('cookie', @almond_cookie)
@friendly_bakery.add_pastry('cookie', @snickerdoodle)

#cakes
@berry_cheesecake = Pastry.new('cake', 'Berry Cheesecake','images/cakes/berry_cheesecake.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'rolled oats'], 3, 10)
@chocolate_cake = Pastry.new('cake', 'Chocolate Cake','images/cakes/chocolate_cake.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 15, 10)
@cherry_glaze = Pastry.new('cake', 'Cherry Glaze','images/cakes/cherry_glaze.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
@carrot_cake = Pastry.new('cake', 'Carrot Cake','images/cakes/carrot_cake.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt'], 2, 10)
@red_velvet = Pastry.new('cake', 'Red Velvet','images/cakes/red_velvet.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'almonds'], 3, 10)
@roll_cake = Pastry.new('cake', 'Roll Cake','images/cakes/roll_cake.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'cinnamon'], 2, 10)
@friendly_bakery.add_pastry('cake', @berry_cheesecake)
@friendly_bakery.add_pastry('cake', @chocolate_cake)
@friendly_bakery.add_pastry('cake', @cherry_glaze)
@friendly_bakery.add_pastry('cake', @carrot_cake)
@friendly_bakery.add_pastry('cake', @red_velvet)
@friendly_bakery.add_pastry('cake', @roll_cake)

#muffins
@banana_nut = Pastry.new('muffin', 'Banana Nut','images/muffins/banana_nut.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
@blueberry = Pastry.new('muffin', 'Blueberry','images/muffins/blueberry.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'rolled oats'], 3, 10)
@corn = Pastry.new('muffin', 'Corn','images/muffins/corn.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
@chocolate_chip = Pastry.new('muffin', 'Chocolate Chip','images/muffins/chocolate_chip.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt'], 2, 10)
@nutella_chocolate = Pastry.new('muffin', 'Nutella Chocolate','images/muffins/nutella.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'almonds'], 3, 10)
@ube = Pastry.new('muffin', 'Ube','images/muffins/ube.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'cinnamon'], 2, 10)
@friendly_bakery.add_pastry('muffin', @banana_nut)
@friendly_bakery.add_pastry('muffin', @blueberry)
@friendly_bakery.add_pastry('muffin', @corn)
@friendly_bakery.add_pastry('muffin', @chocolate_chip)
@friendly_bakery.add_pastry('muffin', @nutella_chocolate)
@friendly_bakery.add_pastry('muffin', @ube)