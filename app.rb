require("sinatra")
require("sinatra/reloader")
require('./lib/title_case')
require("capybara")
also_reload('lib/**/*.rb')

get ("/") do
  erb:index
end

get ("title") do
  erb:title
  @title=params.fetch("title").title_case()
end