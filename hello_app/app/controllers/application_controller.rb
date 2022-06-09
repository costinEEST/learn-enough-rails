class ApplicationController < ActionController::Base
  def hello
		render html: "Hi, all!"
	end
end
