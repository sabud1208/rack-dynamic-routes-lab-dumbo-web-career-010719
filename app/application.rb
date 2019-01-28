class Application 
 
  
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new
  
  if req.path.match('/items')
    add_item 

end
end