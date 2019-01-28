class Application 
 
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new
  
  if req.path.match('/items')
   item = req.path.split("/items/").last
   if items = @@items.find{ |x| x.name == item}
        resp.write item.price 
      else
        
end
end