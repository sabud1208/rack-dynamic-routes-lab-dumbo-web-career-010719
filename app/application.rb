class Application 
 
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new
  
  if req.path.match('/items')
   items = req.path.split("/items/").last
   if item = @@items.find{ |x| x.name ==

end
end