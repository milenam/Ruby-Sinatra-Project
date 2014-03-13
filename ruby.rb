require 'sinatra'
require 'rubygems'
# comment
puts "this is hello ruby"

#variable assignment
 x=5
 name="michael"
 puts name

 #array $ hashes
 myList = [1,34,5,6]
 puts myList[0]

 # symbols
dict = {
     :name => "john"
}
 puts dict[:name]

def add_three(n)
	n + 3
end
puts add_three(5)

w = [1,3,45,66,7]
w.each do |k|
	puts k + 6
end
name = "max"
puts "my name is: #{name}"
get '/hello/:name/:city' do
  "Hey there #{params[:name]} from #{params[:city]}."
end