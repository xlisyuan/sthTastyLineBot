class HelloController < ApplicationController
	def actionEat
		render plain: "O3O"
	end

	def request_headers
		render plain: request.headers.to_h.reject{ |key, value|
		  key.include? '.'
		}.map{ |key, value|
		  "#{key}: #{value}"
		}.sort.join("\n")
	end

	def request_body
		render plain: request.body
	end

	def response_headers
		response.headers['plus'] = 'O v O'
		render plain: response.headers.to_h.map{ |key, value|
		  "#{key}: #{value}"
		}.sort.join("\n")
	  end

	  def show_response_body
		puts "===這是設定前的response.body:#{response.body}==="
		render plain: "clap"
		puts "===這是設定後的response.body:#{response.body}==="
		#render plain: response.body
	  end
end