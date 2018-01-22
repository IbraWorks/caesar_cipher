require "sinatra"
require "erb"
require_relative "lib/caesar_cipher.rb"

get '/' do
  erb :secret_text
end

get '/secret_text' do
  @text = params["text"]
  @shift = params["shift"].to_i
  @secret_text = caesar_cipher(@text, @shift)
  erb :secret_text
end
