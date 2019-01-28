class Application 
 
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new
  
  if req.path.match('/items')
    add_item = 

end
end