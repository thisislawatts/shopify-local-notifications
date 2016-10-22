require 'sinatra'
require 'liquid'

configure do
	set :views, File.dirname(__FILE__) + '/views'
end

get '/' do
	liquid :order_confirmation, :locals => {:world => 'World!'}
end