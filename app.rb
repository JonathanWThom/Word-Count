require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @phrase = params.fetch('phrase')
  @target = params.fetch('target')
  @count = params.fetch('target').word_count(params.fetch('phrase'), params.fetch('option'))
  erb(:word_count)
end
