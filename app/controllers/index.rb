get '/' do
  puts "[LOG] Responding to a GET request for /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/sandbox' do
  puts "[LOG] Responding to a GET request for /sandbox"
  puts "[LOG] Params: #{params.inspect}"
  @var = params["second_input"]
  erb :get_sandbox
end

post '/sandbox' do
  puts "[LOG] Responding to a POST request to /sandbox"
  puts "[LOG] Params: #{params.inspect}"
  @thing = params["first_input"]
  erb :post_sandbox
end
