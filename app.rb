require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get("/") do
  @words = Word.all()
  @definitions = Definition.all()
  erb(:index)
end

post("/words") do
  description = params.fetch("description")
  word = Word.new(description)
  definition = Definition.new(description)
  word.save()
  definition.save()
  erb(:success)
end
