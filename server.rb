require 'sinatra'
require 'sinatra/reloader'
require_relative './classes.rb'


get '/' do
  erb :index
end

post '/email' do
  puts params[:email]
end

get '/:type' do
  @friendly_bakery = Bakery.new

  # cookies
  @chocolate_chip = Pastry.new('cookie', 'Chocolate Chip','images/cookies/chocolate_chip.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
  @oatmeal_raisin = Pastry.new('cookie', 'Oatmeal Raisin','images/cookies/oatmeal_raisin.jpg', 'nom nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'rolled oats'], 3, 10)
  @peanut_butter_banana = Pastry.new('cookie', 'Peanut Butter Banana','images/cookies/banana.jpg', 'nom nom nom', ['butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'flour', 'baking soda', 'water', 'salt', 'chocolate chips'], 2, 10)
  @friendly_bakery.add_pastry('cookie', @chocolate_chip)
  @friendly_bakery.add_pastry('cookie', @oatmeal_raisin)
  @friendly_bakery.add_pastry('cookie', @peanut_butter_banana)

  @cookies = @friendly_bakery.cookies
  erb :pastry
  
end