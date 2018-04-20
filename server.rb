require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
require './classes.rb'
include SendGrid

set :friendly_bakery, @friendly_bakery

get '/' do
  erb :index
end

post '/email' do
  template = (erb :htmlemail, :layout => false)
  from = Email.new(email: 'info@friendlybakery.com')
  to = Email.new(email: params[:email])
  subject = 'Friendly Bakery Catalog'
  content = Content.new(type: 'text/html', value: template)
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  # puts response.parsed_body
  puts response.headers
  erb :email
end

get '/:type' do
  @type = params[:type]
  
  if params[:type] == 'cookies'
    erb :cookies
  elsif params[:type] == 'cakes'
    erb :cakes
  elsif params[:type] == 'muffins'
    erb :muffins
  end
end