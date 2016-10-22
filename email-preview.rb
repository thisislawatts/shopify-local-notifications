require 'sinatra'
require 'liquid'
require 'json'

configure do
	set :views, File.dirname(__FILE__) + '/views'
end

defaults = {
	"order_status_url" => "//example.com/order",
	"shop" => {
		"email" => "example@shopify.com",
		"name"	=> "Store name",
		"url" 	=> "https://timber-demo.myshopify.com",
		"email_accent_color" => "lime"
	}
}

def load_json_data(filename)
	file = open("data/#{filename}.json")
	json = JSON.parse(file.read)

	order = json["order"]

	attributes = []

	order['note_attributes'].each do | attribute |
		attributes.push(attribute.values)
	end

	order['attributes'] = attributes

	return order
end


get '/:template' do
	json_file = "#{params[:template]}"
	liquid params[:template].to_sym, :locals => defaults.merge!(load_json_data(json_file))
end

get '/' do
	liquid :index
end