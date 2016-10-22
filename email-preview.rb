require 'sinatra'
require 'liquid'

configure do
	set :views, File.dirname(__FILE__) + '/views'
end

get '/draft_order_invoice' do
	liquid :draft_order_invoice, :locals => {:world => 'World!'}
end

get '/order_cancelled' do
	liquid :order_cancelled, :locals => {:world => 'World!'}
end

get '/order_confirmation' do
	liquid :order_confirmation, :locals => {:world => 'World!'}
end

get '/refund_notification' do
	liquid :refund_notification, :locals => {:world => 'World!'}
end

get '/' do
	liquid :index
end