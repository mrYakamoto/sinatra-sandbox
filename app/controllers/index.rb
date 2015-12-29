get '/' do
  # Look in app/views/index.erb
  puts "[LOG] Responding to a GET request for /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/sandbox' do
  @name = params[:select]
  Toy.create(name: params[:select])
  puts "[LOG] Responding to a GET request for /sandbox"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_sandbox
end

post '/sandbox' do
  @toy = params[:toy]
  @title = params["post"][:title]
  @price = params["post"][:price]
  @description = params["post"][:description]


  puts "[LOG] Responding to a POST request to /sandbox"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_sandbox
end
