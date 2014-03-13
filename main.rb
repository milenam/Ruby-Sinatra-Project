require "sinatra"
require "haml"
require "shotgun"
require './model/blog.rb'
require './model/init.rb'

db = Blog.new()

get '/' do
	@posts = db.posts()
	haml :index
end

get '/post/:id' do
    @post = db.post(params[:id])
    haml :blogpost
end

get '/post' do
    haml :blogform
end	

post '/post' do
	id = db.new_post(params[:title], params[:body], params[:image])
	redirect "/post/#{id}"
end	

