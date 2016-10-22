require 'sinatra'
require 'liquid'
require 'json'

configure do
	set :views, File.dirname(__FILE__) + '/views'
end

def load_data(filename)
	file = open("data/#{filename}.json")
	json = JSON.parse(file.read)

	return json
end

defaults = {
	:demo_store => 'https://timber-demo.myshopify.com'
}

get '/:template' do
	json_file = "#{params[:template]}"
	liquid params[:template].to_sym, :locals => defaults.merge!(load_data(json_file))
end

get '/' do
	liquid :index
end