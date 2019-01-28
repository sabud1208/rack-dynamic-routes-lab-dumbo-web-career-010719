class Application 
 
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new
  
  if req.path.match('/items')
   item = req.path.split("/items/").last
   if items = @@items.find{ |x| x.name == item}
        resp.write item.price 
    resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status=404
      resp.write "Route not found"
    end
    resp.finish
  end

end